import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:not_app_o_r/views/widgets/coustom_serch_icon.dart';

class CoutsmAppBar extends StatelessWidget {
 const CoutsmAppBar({super.key, required this.title,  required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Text(
          title,
          style: TextStyle(fontSize: 40),
        ),
        Spacer(),
       SerchIcon(icon: icon)
      ],
    );
  }
}
