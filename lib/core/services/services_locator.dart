
import 'package:get_it/get_it.dart';
import 'package:travel_recommender/data/datasource/hotels_remote_data_source.dart';
import 'package:travel_recommender/data/repository/hotels_repository.dart';
import 'package:travel_recommender/domain/repository/base_places_repository.dart';
import 'package:travel_recommender/domain/usecases/get_top_rated_Hotels.dart';

import '../../presentation/controller/hotel_cubit.dart';

final getIt= GetIt.instance;

class ServicesLocator {
  void init(){

    getIt.registerFactory(() => HotelsCubit(getIt(),));

    getIt.registerLazySingleton(() => GetTopRatedHotelsUseCase(getIt()));

    getIt.registerLazySingleton<BasePlacesRepository>(() => HotelsRepository(getIt()));

    getIt.registerLazySingleton<BaseHotelRemoteDataSource>(() => HotelRemoteDataSource());
  }
}