import 'package:bloc/bloc.dart';
import 'package:bloc_api/repositary/home_repositary.dart';
import 'package:meta/meta.dart';
part 'homebloc_event.dart';
part 'homebloc_state.dart';

class HomeblocBloc extends Bloc<HomeblocEvent, HomeblocState> {
  HomeblocBloc() : super(HomeblocInitial(isapifetching: false)) {
    on<FetchApiEvent>((event, emit) async {
      emit(HomeblocState(isapifetching: true));
      final data = await HomeRepositary.fetchRandomApi();
      emit(HomeblocState(isapifetching: false, result: data));
    });
  }
}
