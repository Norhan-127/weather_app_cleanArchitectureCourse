import 'package:clean_architecture_weather/weather/domain/entities/weather.dart';
import 'package:clean_architecture_weather/weather/domain/repository/base_weather_repository.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepository repository;

  GetWeatherByCountryName(this.repository);

  Future<WeatherEntity> execute(String cityName) async {
    return await repository.getWeatherByCityName(cityName);
  }
}
