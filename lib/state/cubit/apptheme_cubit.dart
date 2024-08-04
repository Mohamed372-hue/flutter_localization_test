import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'apptheme_state.dart';

class AppthemeCubit extends Cubit<AppthemeState> {
  AppthemeCubit() : super(AppthemeInitial());
  bool val = false;
  bool lan = false;

  void changelanguage() {
    lan = !lan;
    emit(changelanguagevalue());
  }

  void changevalue(bool value) {
    val = value;
    emit(appthemechangevalue());
  }
}
