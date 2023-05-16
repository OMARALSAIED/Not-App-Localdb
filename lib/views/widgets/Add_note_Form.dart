import 'package:flutter/cupertino.dart';

import 'AddNotesButton.dart';
import 'coustom_textFiled.dart';
import 'customButton.dart';

class AddNoteForm extends State<addnotForm> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formkey,
      child: Column(
        children: [
          SizedBox(height: 60),
          CoustumTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title'
          ),
          const SizedBox(
            height: 30,
          ),
          CoustumTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'Content',
            maxline: 5,
          ),
          const SizedBox(
            height: 24,
          ),
          ButtonAdd(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(
            height: 18,
          )
        ],
      ),
    );
  }
}

class addnotForm extends StatefulWidget {
  const addnotForm({
    super.key,
  });

  @override
  State<addnotForm> createState() => AddNoteForm();
}