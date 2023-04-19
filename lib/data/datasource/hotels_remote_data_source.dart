
import 'package:dio/dio.dart';
import 'package:travel_recommender/data/models/hotels_model.dart';

import '../../core/error/exception.dart';
import '../../core/network/api_constants.dart';
import '../../core/network/error_message_model.dart';

abstract class BaseHotelRemoteDataSource {
  Future<List<HotelModel>> getTopRatedHotels();
  Future<List<HotelModel>> getRecommendedMovies();

}
class HotelRemoteDataSource extends BaseHotelRemoteDataSource {


  @override
  Future<List<HotelModel>> getTopRatedHotels()async {
    final response = await Dio().get(ApiConstance.topRatedHotelsPath);
    if (response.statusCode == 200) {
      return List<HotelModel>.from((response.data["results"] as List)
          .map((e) => HotelModel.fromJson(e)));
    }
    else{
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<HotelModel>> getRecommendedMovies() {
    // TODO: implement getRecommendedMovies
    throw UnimplementedError();
  }

}