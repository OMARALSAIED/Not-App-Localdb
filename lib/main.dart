import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:not_app_o_r/cubits/Add_not_cubit/add_not_cubit.dart';
import 'package:not_app_o_r/views/view.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:not_app_o_r/views/widgets/color_constant.dart';

import 'Models/Note_model.dart';
import 'Simple_Block.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = MyBlocObserver();

  await Hive.openBox(knotesBox);
  Hive.registerAdapter(NoteModelAdpter());
  runApp(NotsApp());
}

class NotsApp extends StatelessWidget {
  const NotsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AddNotCubit(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
          home: const NotsView(),
        ));
  }
}
