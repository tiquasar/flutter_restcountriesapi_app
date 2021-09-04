import 'package:countries/Widgets/CountriesList.dart';

import 'package:flutter/material.dart';


class Africa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: 160,
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ListCountries(regionName: "africa"),
        )),
        child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/africa.png')),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'AFRICA',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,letterSpacing: 1.8),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
