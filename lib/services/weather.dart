import 'package:learningapp/services/location.dart';
import 'package:learningapp/services/networking.dart';
import 'package:learningapp/utilities/constants.dart';

class WeatherModel {
  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    return NetworkHelper(
      "$kOwmUrl?lat=${location.latitude}&lon=${location.longitude}",
    ).getData();
  }

  Future<dynamic> getCityWeather(String city) {
    return NetworkHelper("$kOwmUrl?q=$city").getData();
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '';
    } else if (condition < 400) {
      return '';
    } else if (condition < 600) {
      return '';
    } else if (condition < 700) {
      return '';
    } else if (condition < 800) {
      return '';
    } else if (condition == 800) {
      return '';
    } else if (condition <= 804) {
      return '';
    } else {
      return '';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return '';
    } else if (temp > 20) {
      return '';
    } else if (temp < 10) {
      return '';
    } else {
      return '';
    }
  }
}
