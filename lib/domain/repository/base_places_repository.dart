import 'package:dartz/dartz.dart';
import 'package:travel_recommender/domain/entities/Hotels.dart';

import '../../core/error/failure.dart';

abstract class BasePlacesRepository{     //contract
  Future<Either<Failure,List<Hotels>>> getTopRated();
}