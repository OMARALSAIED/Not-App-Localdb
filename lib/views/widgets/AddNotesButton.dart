import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:not_app_o_r/cubits/Add_not_cubit/add_not_cubit.dart';
import 'package:not_app_o_r/views/widgets/coustom_textFiled.dart';
import 'package:not_app_o_r/views/widgets/Add_note_Form.dart';
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
          child: BlocConsumer<AddNotCubit, AddNotState>(
        listener: (context, state) {
          if (state is AddNotFalier) {
            print('failed ${state.errMessage}');
          }

          if (state is AddNotSucsses) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddNotLoding ? true : false,
              child: addnotForm());
        },
      )),
    );
  }
}
