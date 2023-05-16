import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:not_app_o_r/Models/Note_model.dart';
import 'package:not_app_o_r/views/widgets/color_constant.dart';

part 'add_not_state.dart';

class AddNotCubit extends Cubit<AddNotState> {
  AddNotCubit() : super(AddNotInitial());

  adddNote(NotModel note) async {
    emit(AddNotLoding());

    try {
      var notesBox = Hive.box<NotModel>(knotesBox);

      emit(AddNotSucsses());

      await notesBox.add(note);
    } on Exception catch (e) {
      AddNotFalier(e.toString());
      // TODO
    }
  }
}
