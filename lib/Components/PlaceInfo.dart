// PlaceCard(height: 220, width: double.infinity, borderRadius: 0),
import 'package:flutter/material.dart';
import "PlaceCard.dart";
import "TradeCard.dart";
import 'package:gope_app/model/Place/PlaceTotalInfo.dart';
import "package:gope_app/model/Trade/TradeCardExampe.dart";

class PlaceInfo extends StatefulWidget {
  @override
  _PlaceInfoState createState() => _PlaceInfoState();
}

class _PlaceInfoState extends State<PlaceInfo> {
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

  final info = PlaceTotalInfo(
      "Rúpac",
      4.8,
      "Lima",
      ["Assets/Images/rupac.jpg"],
      "En la cima del cielo del departamento de Lima, se encuentra Rúpac una mágica ciudad conocida también como Machu Picchu limeño. Al llegar la noche, su imponente vista enamora a través de su cielo color rojo, gracias al sunset del Valle. Alejados del bullicio y estrés, Rúpac se convierte en la mejor opción para viajar cerca de Lima debido a su buen estado de conservación.",
      "De diciembre a marzo",
      "Débil y solo en operadora Claro",
      "Baños portables",
      "Disponible",
      "S/. 20",
      "Usar ropa fresca en horas de la mañana, ya que en las noches la temperatura baja es recomendable llevar casacas y abrigos para el clima ventoso. Agua para hidratarse tras la larga caminata que se realizará. Casaca impermeable y varios polos, debido a que se cruzarán riachuelos. Zapatillas para trekking. Carpa, si es que van a pernoctar en el Valle. Llevar alimentos, debido a que no hay tiendas hasta el pueblo de La Florida.",
      "Ve al Gran Terminal Terrestre en Plaza Norte y toma los buses que van a la ciudad de Huaral(a 2 horas de Lima). Una vez en Huaral, debes de tomar un colectivo( movilidad compartida) que te llevará a Las Pampas. El costo por persona es de 25 soles aproximadamente. Se recomienda coordinar el regreso con el mismo chofer para evitar inconvenientes o quedarse varado en caso de no encontrar movilidad. Después de hora y media de viaje llegarás a La Florida(esto queda unos minutos antes de Las Pampas), allí debes pagar el derecho de ingreso a Rúpac que es de 10 soles. Cuando llegues a las Pampas encontrarás un par de restaurantes y unas tiendas donde podrás comprar alimentos, agua o incluso usar el baño antes de iniciar el trekking. Este es un pueblo fantasma ya que los pobladores decidieron mudarse a otro lugar hace mucho tiempo, pero los lugareños conservan aún las casas para darle un toque más turistico al lugar. ¡Empieza la aventura! A medida que vayas caminando llegarás primero a un puesto de descanso, es decir un espacio de guardia en el sendero original que sube desde el valle. Este lugar es ideal para descansar y apreciar las chullpas de piedras construidas hace miles de años y que aún se conservan en pie. Después de esa parada solo debes subir un poco más y habrás llegado a la ciudadela perdida de Rúpac.");

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PlaceCard(
              size: "large",
              placeName: info.placeName,
              rating: info.rating,
              region: info.region,
              photo: info.photos[0]),
          Container(
            alignment: Alignment(-1, 0),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 5),
            child: Text(
              "Negocios locales cerca",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 180,
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: tradeInfoList
                    .map((trade) => TradeCard(
                        size: "small",
                        tradeName: trade.tradeName,
                        rating: trade.rating,
                        photo: trade.photo,
                        services: trade.services))
                    .toList()
                //
                ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(85, 79, 252, 1),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.location_pin),
                        Text("Cómo llegar"),
                      ],
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Temporada recomendada",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        info.season,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Lugar para acampar",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        info.camping,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Baños",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        info.bathroom,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Señal de internet",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        info.internet,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  )
                ],
              ),
              // Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            ]),
          ),
          Container(
            alignment: Alignment(-1, 0),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 5),
            child: Text(
              "Costo de entrada",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment(-1, 0),
            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: Text(
              info.entranceCost,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            alignment: Alignment(-1, 0),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 5),
            child: Text(
              "Acerca de",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment(-1, 0),
            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: Text(
              info.about,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            alignment: Alignment(-1, 0),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 5),
            child: Text(
              "Recomendaciones",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment(-1, 0),
            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: Text(
              info.recommendations,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
