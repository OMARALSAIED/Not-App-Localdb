import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:not_app_o_r/views/widgets/coustom_appBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'coustom_nots_tiem.dart';
import 'nots_List_view.dart';

class NotsViewBody extends StatelessWidget {
  const NotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 50,
          ),
          CoutsmAppBar(icon:Icons.search,title: "Notes",),
          Expanded(child: NotsListView()),
        ],
      ),
    );
  }
}
