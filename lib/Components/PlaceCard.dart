import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PlaceCard extends StatelessWidget {
  final String size;
  final String placeName;
  final double rating;
  final String region;
  final String photo;

  // final bool isClickable;

  PlaceCard({
    Key? key,
    required this.size,
    required this.placeName,
    required this.rating,
    required this.region,
    required this.photo,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      height: size == "small" ? 180 : 220,
      width: size == "small" ? 180 : double.infinity,
      child: Card(
        elevation: 2,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size == "small" ? 15 : 0),
        ),
        child: InkWell(
          onTap: () {
            // if(isClickable == null){
            Navigator.pushNamed(
              context,
              "/place",
            );
            // }
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                child: Image.asset(
                  photo,
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  left: 0,
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
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: double.infinity,
                              child: Text(
                                placeName,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: size == "small" ? 16 : 20,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Container(
                              alignment: Alignment(-1, 0),
                              child: RatingBarIndicator(
                                rating: rating,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: size == "small" ? 20 : 30,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              child: Text(
                                "En ${region}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(250, 255, 0, 1),
                                  fontSize: size == "small" ? 14 : 18,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
