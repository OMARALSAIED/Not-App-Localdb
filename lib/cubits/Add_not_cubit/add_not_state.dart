part of 'add_not_cubit.dart';

@immutable
abstract class AddNotState {}

class AddNotInitial extends AddNotState {}

class AddNotLoding extends AddNotState {}

class AddNotSucsses extends AddNotState {}

class AddNotFalier extends AddNotState {
  final String errMessage;

  AddNotFalier(this.errMessage);
  
}
