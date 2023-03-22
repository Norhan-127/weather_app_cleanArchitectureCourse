import 'package:clean_architecture_weather/weather/domain/entities/weather.dart';
abstract class BaseWeatherRepository{
 Future<WeatherEntity> getWeatherByCityName(String cityName);
}