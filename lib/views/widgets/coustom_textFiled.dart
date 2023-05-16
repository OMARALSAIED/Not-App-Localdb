import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:not_app_o_r/views/widgets/color_constant.dart';

class CoustumTextField extends StatelessWidget {
  const CoustumTextField(
      {super.key, required this.hint, this.maxline = 1, this.onSaved});
  final String hint;
  final int maxline;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      maxLines: maxline,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: KprimaryColor,
          ),
          border: BuildBorder(),
          enabledBorder: BuildBorder(),
          focusedBorder: BuildBorder(KprimaryColor)),
    );
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
