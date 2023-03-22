import 'package:clean_architecture_weather/weather/data/data_source/remote_datasource.dart';
import 'package:clean_architecture_weather/weather/domain/entities/weather.dart';
import 'package:clean_architecture_weather/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<WeatherEntity> getWeatherByCityName(String countyName) async {
    return await (baseRemoteDataSource.getWeatherByCountryName(countyName))!;
  }
}
