import 'package:countries/data/CountryModel.dart';
import 'package:flutter/material.dart';
import 'package:dart_countries/dart_countries.dart';

class CountryDetails extends StatelessWidget {
  final CountryModel countryModel;

  const CountryDetails({@required this.countryModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          countryModel.name.toUpperCase(),
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1.8),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Card(
                  child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("Name:\n${countryModel.name}"),
                  ),
                  ListTile(
                    title: Text("Capital:\n${countryModel.capital}"),
                  ),
                  ListTile(
                    title: Text(
                        "Shares Borders With:\n${countryModel.borders.join(", ")}"),
                  ),
                  ListTile(
                    title: Text(
                        "Spoken Languages: \n${countriesLanguages[countryModel.alpha2Code].join(", ")}"),
                  ),
                  ListTile(
                    title: Text(""),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
