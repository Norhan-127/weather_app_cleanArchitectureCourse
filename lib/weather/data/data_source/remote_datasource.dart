import 'dart:convert';
import 'package:clean_architecture_weather/core/utils/constance.dart';
import 'package:clean_architecture_weather/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel> getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel> getWeatherByCountryName(String countryName) async {
    final response = await Dio().get(
        '${Constance.baseUrl}/weather?q=$countryName&appid=${Constance.appKey}');
    return WeatherModel.fromJson(json.decode(response.data));
  }
}
