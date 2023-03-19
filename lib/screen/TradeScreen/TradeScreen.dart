import 'package:flutter/material.dart';
import "package:gope_app/Components/PlaceCard.dart";
import "package:gope_app/Components/BigCard.dart";
import 'package:gope_app/Components/TradeCard.dart';
import 'package:gope_app/model/Place/PlaceCardInfo.dart';

class TradeScreen extends StatefulWidget {
  @override
  _TradeScreenState createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TradeCard(
              size: "large",
              tradeName: "Arrieros de don Pepe",
              rating: 4.8,
              photo: "Assets/Images/arriero.jpg",
              services: {}),
          Container(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            "Acerca de",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(85, 79, 252, 1),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.star),
                              Text("Calificar"),
                            ],
                          ),
                        ),
                      ],
                    )),
                Container(
                  alignment: Alignment(-1, 0),
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
                  child: Text(
                    "Alquiler de arrieros para la subida a la ciudadela de Rúpac a 200 soles para 8 personas.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment(-1, 0),
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text(
                    "Servicios adicionales",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment(-1, 0),
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: Text(
                    "Alquiler de servivios higiénicos.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment(-1, 0),
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text(
                    "Ubicación",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment(-1, 0),
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_pin,
                          size: 40,
                          color: Color.fromRGBO(85, 79, 252, 1),
                        ),
                        Text("C. El Monte de, Lurigancho-Huaral 15024",
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ],
                    )),
                Container(
                  alignment: Alignment(-1, 0),
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text(
                    "Referencia",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment(-1, 0),
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: Text(
                    "Justo antes de salir del pueblo de Rúpac.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment(-1, 0),
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text(
                    "Contacto",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment(-1, 0),
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone,
                          size: 40,
                          color: Color.fromRGBO(85, 79, 252, 1),
                        ),
                        Text("943 837 352",
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
