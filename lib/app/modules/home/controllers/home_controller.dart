import 'dart:convert';

import 'package:antrian/app/data/models/weather.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  Weather? weather;

  final count = 0.obs;
  String date =
      DateFormat("EEEE, dd MMMM yyyy").format(DateTime.now().toLocal());
  String? api_key = dotenv.env['API_KEY_WEATHER'];

  getWeather() async {
    final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=-8.132966933721239&lon=112.01492633753848&appid=$api_key&units=metric'));
    if (response.statusCode == 200) {
      weather = Weather.fromJson(jsonDecode(response.body));
      update();
    } else {}
  }

  @override
  void onInit() {
    super.onInit();
    getWeather();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
