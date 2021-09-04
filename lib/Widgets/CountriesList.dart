import 'package:countries/CountryDetails.dart';
import '../http_get/http_getter.dart';
import 'package:countries/data/CountryModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListCountries extends StatelessWidget {
  final String regionName;
  final CountryHttpService httpService = CountryHttpService();
  static const routeName = '/countries';

  ListCountries({@required this.regionName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          regionName.toUpperCase(),
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1.8),
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        child: FutureBuilder(
          future: httpService.getCountries(regionName),
          builder: (BuildContext context,
              AsyncSnapshot<List<CountryModel>> snapshot) {
            if (snapshot.hasData) {
              List<CountryModel> countries = snapshot.data;
              return ListView(
                children: countries
                    .map(
                      (CountryModel countryModel) => Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: new Container(
                                width: 40.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)),
                                child: SvgPicture.network(countryModel.flag,
                                    fit: BoxFit.fill),
                              ),
                              title: Text(countryModel.name),
                              subtitle: Text('Capital: '+countryModel.capital),
                              onTap: () =>
                                  Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CountryDetails(
                                  countryModel: countryModel,
                                ),
                              )),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              );
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
