import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color_constant.dart';

class ButtonAdd extends StatelessWidget {
  const ButtonAdd({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: KprimaryColor, borderRadius: BorderRadius.circular(16)),
        height: 55,
        child: Center(
          child: Text(
            'Add',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
