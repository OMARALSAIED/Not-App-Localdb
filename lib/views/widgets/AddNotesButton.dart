import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:not_app_o_r/views/widgets/coustom_textFiled.dart';

import 'color_constant.dart';
import 'customButton.dart';

class AddNoteButtonSheet extends StatefulWidget {
  const AddNoteButtonSheet({super.key});

  @override
  State<AddNoteButtonSheet> createState() => _AddNoteButtonSheetState();
}

class _AddNoteButtonSheetState extends State<AddNoteButtonSheet> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Strack_Form(),
      ),
    );
  }
}

class Strack_Form extends StatefulWidget {
  const Strack_Form({
    super.key,
  });

  @override
  State<Strack_Form> createState() => _Strack_FormState();
}

class _Strack_FormState extends State<Strack_Form> {
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
