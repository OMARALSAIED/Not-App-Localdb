import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:not_app_o_r/views/widgets/coustom_appBar.dart';
import 'package:not_app_o_r/views/widgets/coustom_textFiled.dart';

class EditNotViewBody extends StatelessWidget {
  const EditNotViewBody({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CoutsmAppBar(
              icon: Icons.check,
              title: 'Edit Note',
            ),
            SizedBox(
              height: 50,
            ),
            CoustumTextField(hint: "Title"),
            SizedBox(
              height: 16,
            ),
            CoustumTextField(
              hint: "Content",
              maxline: 5,
            )
          ],
        ),
      );
}
