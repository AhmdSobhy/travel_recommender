
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_recommender/domain/entities/Hotels.dart';
import 'package:travel_recommender/presentation/controller/layout_state.dart';

import '../../domain/usecases/get_top_rated_Hotels.dart';

class HotelsCubit extends Cubit<LayoutStates> {
  HotelsCubit(this.getTopRatedMoviesUseCase) : super(LayoutInitialState());
  static HotelsCubit get(context) => BlocProvider.of(context);

  List<Hotels> topRatedMovies = [];

  final GetTopRatedHotelsUseCase getTopRatedMoviesUseCase;

  void getTopRatedMovies() async {
    emit(GetHotelsStatesLoadingState());


    final result = await getTopRatedMoviesUseCase.execute();


    result.fold((l) => emit(GetHotelsStatesErrorState()), (r) {
      topRatedMovies = r;
      emit(GetHotelsSuccessState());
    });
  }
}