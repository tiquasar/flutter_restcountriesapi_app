import 'package:flutter/foundation.dart';

class CountryModel {
  final String capital;
  final String flag;
  final String name;
  final List<String> borders;
  final String alpha2Code;

  CountryModel({
    @required this.name,
    @required this.capital,
    @required List<dynamic> borders,
    @required this.alpha2Code,
    @required this.flag,
  }) : this.borders = borders.map((e) => e.toString()).toList();

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(
      name: json['name'] as String,
      capital: json['capital'] as String,
      alpha2Code: json['alpha2Code'] as String,
      flag: json['flag'] as String,
      borders: json['borders'] as List<dynamic>,
    );
  }
}
