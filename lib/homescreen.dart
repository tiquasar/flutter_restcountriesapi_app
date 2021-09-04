import 'package:countries/Widgets/Regions/Africa.dart';
import 'package:countries/Widgets/Regions/Oceania.dart';
import 'package:countries/Widgets/Regions/america.dart';
import 'package:countries/Widgets/Regions/asia.dart';
import 'package:countries/Widgets/Regions/europe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async {
      return await showDialog( //show confirm dialogue
        //the return value will be from "Yes" or "No" options
        context: context,
        builder: (context) => AlertDialog(
          title: Text('EXIT APP'),
          content: Text('Do you want to exit the App?'),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false),
              //return false when click on "NO"
              child: Text('No'),
            ),
            ElevatedButton(
              onPressed: () => SystemNavigator.pop(),
              //return true when click on "Yes"
              child: Text('Yes'),
            ),
          ],
        ),
      )??false; //if showDialouge had returned null, then return false
    }
    return WillPopScope(
        onWillPop: showExitPopup, //call function on back button press
        child: Scaffold(
      appBar: AppBar(
        title: Text('Countries'),
      ),
      body: ListView(scrollDirection: Axis.vertical, children: <Widget>[
        Africa(),
        Asia(),
        America(),
        Europe(),
        Oceania(),
      ]),
      drawer: Container(
        decoration: BoxDecoration(),
        padding: EdgeInsets.fromLTRB(5.0, 30.0, 0.0, 10.0),
        width: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(5.0)),

          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue.shade300,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            padding: EdgeInsets.fromLTRB(10.0, 30.0, 3.0, 30.0),
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                new Container(
                  alignment: Alignment.center,
                  height: 100.0,
                  width: double.infinity,
                  child: DrawerHeader(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.blue,
                    ),
                    child: Text('      COUNTRIES    \n            APP '),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'HOME',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.8),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    HomeScreen();
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text(
                    'EXIT',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.8),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    showDialog(
                      //show confirm dialogue
                      //the return value will be from "Yes" or "No" options
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('EXIT APP'),
                        content: Text('Do you want to exit the App?'),
                        actions: [
                          ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            //return false when click on "NO"
                            child: Text('No'),
                          ),
                          ElevatedButton(
                            onPressed: () => SystemNavigator.pop(),
                            //return true when click on "Yes"
                            child: Text('Yes'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    );
  }
}
