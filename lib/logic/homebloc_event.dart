part of 'homebloc_bloc.dart';

@immutable
sealed class HomeblocEvent {}

class FetchApiEvent extends HomeblocEvent {}
