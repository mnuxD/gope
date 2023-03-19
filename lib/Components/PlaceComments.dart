// PlaceCard(height: 220, width: double.infinity, borderRadius: 0),
import 'package:flutter/material.dart';
import "package:flutter_rating_bar/flutter_rating_bar.dart";
import "PlaceCard.dart";
import "TradeCard.dart";
import "CommentWidget.dart";
import 'package:gope_app/model/Place/PlaceTotalInfo.dart';
import "package:gope_app/model/Trade/TradeCardExampe.dart";

class PlaceComments extends StatefulWidget {
  @override
  _PlaceCommentsState createState() => _PlaceCommentsState();
}

class _PlaceCommentsState extends State<PlaceComments> {
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
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Form(
            // key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Escribe un comentario...',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingBar.builder(
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 40,
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        // print(rating);
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Validate will return true if the form is valid, or false if
                        // the form is invalid.
                        // if (_formKey.currentState!.validate()) {
                        // Process data.
                        // }
                      },
                      child: const Text('Submit'),
                    ),
                  ],
                ),
                CommentWidget(
                  letter: "M",
                  userName: "Manolo Rojas",
                  comment:
                      "Muy buen lugar, genial para acampar y ver las estrellas",
                  rating: 5,
                ),
                CommentWidget(
                  letter: "J",
                  userName: "Juan Peralta",
                  comment: "Estuvo genial aunque no vi el atardecer rojo :(",
                  rating: 4.5,
                ),
                CommentWidget(
                  letter: "J",
                  userName: "Julia Zavaleta",
                  comment:
                      "Fue un lugar maravilloso, fui con mi esposo y nos encantó!!",
                  rating: 5,
                ),
                CommentWidget(
                  letter: "E",
                  userName: "Estaphany Mendez",
                  comment: "Mucho frio y lluvia, no pude dormir :(",
                  rating: 3,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
