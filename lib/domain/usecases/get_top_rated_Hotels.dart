import 'package:dartz/dartz.dart';
import 'package:travel_recommender/domain/entities/Hotels.dart';

import '../../core/error/failure.dart';
import '../repository/base_places_repository.dart';

class GetTopRatedHotelsUseCase{
  final BasePlacesRepository basePlacesRepository;

  GetTopRatedHotelsUseCase(this.basePlacesRepository);

  Future<Either<Failure,List<Hotels>>> execute() async
  {
    return await basePlacesRepository.getTopRated();
  }
}