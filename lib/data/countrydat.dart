import 'package:flutter/cupertino.dart';

class Country {
  final String capital;
  final String flags;
  final String name;
  final String alpha2Code;

  Country({
    @required this.name,
    @required this.capital,
    @required this.alpha2Code,
    @required this.flags,
  });
}
