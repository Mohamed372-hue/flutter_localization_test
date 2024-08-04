part of 'apptheme_cubit.dart';

@immutable
sealed class AppthemeState {}

final class AppthemeInitial extends AppthemeState {}

final class appthemechangevalue extends AppthemeState {}

final class changerandomvalue extends AppthemeState {}

final class changelanguagevalue extends AppthemeState {}
