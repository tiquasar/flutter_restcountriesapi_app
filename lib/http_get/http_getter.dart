import 'dart:convert';
import 'package:countries/data/CountryModel.dart';
import 'package:http/http.dart';

class CountryHttpService {
  final String country = "https://restcountries.eu/rest/v2/region/";

  Future<List<CountryModel>> getCountries(String regionName) async {
    Response res = await get(country + regionName);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<CountryModel> countries =
          body.map((dynamic item) => CountryModel.fromJson(item)).toList();
      return countries;
    } else {
      throw "LOAD DATA ERROR";
    }
  }
}
