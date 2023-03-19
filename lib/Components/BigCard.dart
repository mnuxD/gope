import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BigCard extends StatelessWidget {
  final String textCard;
  final String photo;
  // final Sehir sehirData;
  // final bool haveText;
  // final bool isClickable;

  BigCard({
    Key? key,
    required this.textCard,
    required this.photo,
    // required this.sehirData,
    // required this.haveText,
    // required this.isClickable
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Container(
        height: 220,
        width: double.infinity,
        child: Card(
          elevation: 2,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: InkWell(
            onTap: () {
              // if(isClickable == null){
              //   Navigator.pushNamed(context, myRouteNames.placesDetailRoute, arguments:[placeData, sehirData]);
              // }
            },
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  child: Image.asset(
                    photo,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    child: Container(
                        decoration: new BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(0, 0, 0, 1),
                                Color.fromRGBO(0, 0, 0, 0),
                              ],
                              stops: [
                                0,
                                1,
                              ],
                              begin: FractionalOffset.bottomCenter,
                              end: FractionalOffset.topCenter),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.all(10),
                                          child: Text(
                                            ">",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 28,
                                            ),
                                          ),
                                        ),
                                        flex: 1,
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.all(10),
                                          child: Text(
                                            textCard,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 24,
                                            ),
                                          ),
                                        ),
                                        flex: 10,
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
