import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubit/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/colors_list_view.dart';
import 'package:note_app/widget/custom_bottom.dart';
import 'package:note_app/widget/custom_text_field.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  String formattedDate = DateFormat('dd-MM-yyyy').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 15),
          CustomTextField(
            text: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          CustomTextField(
            text: 'Content',
            maxLine: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          SizedBox(height: 35),
          ListViewItem(),
          const SizedBox(height: 50),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomBotton(
                isLOading: state is AddNoteLoading,
                text: 'Add',
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: formattedDate,
                      // ignore: deprecated_member_use
                      color: Colors.amber.value,
                    );
                    await BlocProvider.of<AddNoteCubit>(
                      context,
                    ).addNote(noteModel);
                    // ignore: use_build_context_synchronously
                    BlocProvider.of<NotesCubit>(context).fetchAlllNotes();
                    setState(() {});
                    // Navigator.pop(context);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
