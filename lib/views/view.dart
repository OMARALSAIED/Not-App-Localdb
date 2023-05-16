import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:not_app_o_r/views/widgets/AddNotesButton.dart';
import 'package:not_app_o_r/views/widgets/nots_view.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) => AddNoteButtonSheet());
          },
          child: Icon(Icons.add)),
      body: NotsViewBody(),
    );
  }
}
