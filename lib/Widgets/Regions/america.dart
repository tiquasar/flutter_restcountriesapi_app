import 'package:flutter/material.dart';



import '../CountriesList.dart';

class America extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: 160,
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ListCountries(regionName: "americas"),
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
                      image: AssetImage('assets/america.png')),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'AMERICA',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,letterSpacing: 1.8),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
