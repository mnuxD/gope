// PlaceCard(height: 220, width: double.infinity, borderRadius: 0),
import 'package:flutter/material.dart';
import "package:flutter_rating_bar/flutter_rating_bar.dart";
import "PlaceCard.dart";
import "TradeCard.dart";
import "CommentWidget.dart";
import 'package:gope_app/model/Place/PlaceTotalInfo.dart';
import "package:gope_app/model/Trade/TradeCardExampe.dart";

class PlaceMap extends StatefulWidget {
  @override
  _PlaceMapState createState() => _PlaceMapState();
}

class _PlaceMapState extends State<PlaceMap> {
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

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Container(
            alignment: Alignment(-1, 0),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 5),
            child: Text(
              "Cómo llegar",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Stepper(
            currentStep: _index,
            controlsBuilder: (context, _) {
              return Row(
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      if (_index <= 3) {
                        setState(() {
                          _index += 1;
                        });
                      }
                    },
                    child: const Text('Siguiente'),
                  ),
                  TextButton(
                    onPressed: () {
                      if (_index > 0) {
                        setState(() {
                          _index -= 1;
                        });
                      }
                    },
                    child: const Text('Atrás'),
                  ),
                ],
              );
            },
            onStepCancel: () {
              if (_index > 0) {
                setState(() {
                  _index -= 1;
                });
              }
            },
            onStepContinue: () {
              if (_index <= 3) {
                setState(() {
                  _index += 1;
                });
              }
            },
            onStepTapped: (int index) {
              setState(() {
                _index = index;
              });
            },
            steps: <Step>[
              Step(
                title: const Text('Paso 1'),
                content: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                        'Ve al Gran Terminal Terrestre en Plaza Norte y toma los buses que van a la ciudad de Huaral(a 2 horas de Lima).')),
              ),
              Step(
                title: Text('Paso 2'),
                content: Text(
                    'Una vez en Huaral, debes de tomar un colectivo( movilidad compartida) que te llevará a Las Pampas. El costo por persona es de 25 soles aproximadamente. Se recomienda coordinar el regreso con el mismo chofer para evitar inconvenientes o quedarse varado en caso de no encontrar movilidad.'),
              ),
              Step(
                title: Text('Paso 3'),
                content: Text(
                    'Después de hora y media de viaje llegarás a La Florida(esto queda unos minutos antes de Las Pampas), allí debes pagar el derecho de ingreso a Rúpac que es de 10 soles.'),
              ),
              Step(
                title: Text('Paso 4'),
                content: Text(
                    'Cuando llegues a las Pampas encontrarás un par de restaurantes y unas tiendas donde podrás comprar alimentos, agua o incluso usar el baño antes de iniciar el trekking. Este es un pueblo fantasma ya que los pobladores decidieron mudarse a otro lugar hace mucho tiempo, pero los lugareños conservan aún las casas para darle un toque más turistico al lugar.'),
              ),
              Step(
                title: Text('Paso 5'),
                content: Text(
                    "¡Empieza la aventura! A medida que vayas caminando llegarás primero a un puesto de descanso, es decir un espacio de guardia en el sendero original que sube desde el valle. Este lugar es ideal para descansar y apreciar las chullpas de piedras construidas hace miles de años y que aún se conservan en pie. Después de esa parada solo debes subir un poco más y habrás llegado a la ciudadela perdida de Rúpac."),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
