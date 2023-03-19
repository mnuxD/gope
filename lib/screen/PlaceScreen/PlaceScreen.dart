import 'package:flutter/material.dart';
import "package:gope_app/Components/PlaceCard.dart";
import "package:gope_app/Components/BigCard.dart";
import "package:gope_app/Components/PlaceComments.dart";
import "package:gope_app/Components/PlaceInfo.dart";
import "package:gope_app/Components/PlaceMap.dart";
import "package:gope_app/Components/PlacePhotos.dart";

class PlaceScreen extends StatefulWidget {
  @override
  _PlaceScreenState createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  // late SharedPreferences prefs;
  bool isLogged = false;

  // Future getPrefs() async {
  //   prefs = await SharedPreferences.getInstance();

  //   setState(() {
  //     if (!prefs.containsKey('isLogged')) {
  //       prefs.setBool('isLogged', false);
  //       isLogged = prefs.getBool('isLogged') ?? false;
  //     } else {
  //       isLogged = prefs.getBool('isLogged') ?? false;
  //     }
  //   });
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getPrefs();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'Assets/Images/GOPE.png',
              fit: BoxFit.contain,
              height: 32,
            ),
          ],
        ),
        backgroundColor: const Color(0xffffffff),
        foregroundColor: const Color.fromRGBO(85, 79, 252, 1),
        centerTitle: true,

        //leading: Icon(Icons.explore),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: IconButton(
              icon: Tooltip(
                message: 'Configuración',
                child: Icon(Icons.settings, size: 30),
              ),
              onPressed: () {
                // Navigator.pushNamed(context, myRouteNames.profileRoute);
              },
            ),
          )
        ],
      ),
      body: _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  // final Data sehirData = new Data();

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 4,
      child: new Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
              height: 50.0,
              child: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.info, color: Colors.grey)),
                  Tab(icon: Icon(Icons.photo_library, color: Colors.grey)),
                  Tab(icon: Icon(Icons.chat, color: Colors.grey)),
                  Tab(icon: Icon(Icons.location_on, color: Colors.grey)),
                ],
              )),
        ),
        body: TabBarView(
          children: [
            PlaceInfo(),
            PlacePhotos(),
            PlaceComments(),
            PlaceMap(),
          ],
        ),
      ),
    );
  }
}
