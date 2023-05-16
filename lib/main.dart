import 'package:flutter/material.dart';
import 'package:not_app_o_r/views/view.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:not_app_o_r/views/widgets/color_constant.dart';

import 'Models/Note_model.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(knotesBox);
  Hive.registerAdapter(NoteModelAdpter());
  runApp(NotsApp());
}

class NotsApp extends StatelessWidget {
  const NotsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const NotsView(),
    );
  }
}
