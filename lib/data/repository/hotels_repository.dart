
import 'package:dartz/dartz.dart';
import 'package:travel_recommender/domain/entities/Hotels.dart';

import '../../core/error/exception.dart';
import '../../core/error/failure.dart';
import '../../domain/repository/base_places_repository.dart';
import '../datasource/hotels_remote_data_source.dart';

class HotelsRepository extends BasePlacesRepository{
  final BaseHotelRemoteDataSource baseHotelRemoteDataSource;
  HotelsRepository(this.baseHotelRemoteDataSource);

  @override
  Future<Either<Failure,List<Hotels>>> getTopRated() async{
    final result = await baseHotelRemoteDataSource.getTopRatedHotels();
    try{
      return Right(result.cast<Hotels>());// to be fixed
    } on ServerException catch(failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }


}