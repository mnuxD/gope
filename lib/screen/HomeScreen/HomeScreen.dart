import 'package:flutter/material.dart';
import "package:gope_app/Components/PlaceCard.dart";
import "package:gope_app/Components/BigCard.dart";
import 'package:gope_app/model/Place/PlaceCardInfo.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
      body: Content(),
    );
  }
}

class Content extends StatelessWidget {
  // final Data sehirData = new Data();

  final List<PlaceCardInfo> dataPlaces = [
    PlaceCardInfo(
        180, 180, 15, "Laguna Parón", 4.5, "Ancash", "Assets/Images/paron.jpg"),
    PlaceCardInfo(
        180, 180, 15, "Rúpac", 4.8, "Lima", "Assets/Images/rupac.jpg"),
    PlaceCardInfo(180, 180, 15, "Cañón de los Perdidos", 4.5, "Ica",
        "Assets/Images/canon.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Sugerencias",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(onPressed: null, icon: Icon(Icons.refresh))
                  ],
                ),
                Container(
                  height: 180,
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: dataPlaces
                          .map((place) => PlaceCard(
                              size: "small",
                              placeName: place.placeName,
                              rating: place.rating,
                              region: place.region,
                              photo: place.photo))
                          .toList()
                      //
                      ),
                ),
              ],
            ),
          ),
          BigCard(
            textCard: "¿Tienes un negocio? Regístralo aquí!",
            photo: "Assets/Images/negocio.webp",
          ),
          BigCard(
            textCard:
                "¿Descubriste un nuevo lugar? Compártelo con la comunidad!",
            photo: "Assets/Images/explorar.png",
          ),
        ],
      ),
    );
  }
}
