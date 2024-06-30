part of 'homebloc_bloc.dart';

class HomeblocState {
  final bool isapifetching;
  final String? result;

  HomeblocState({required this.isapifetching, this.result});
}

class HomeblocInitial extends HomeblocState {
  HomeblocInitial({required super.isapifetching});
}
