import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:intl/intl.dart';

class CommentWidget extends StatelessWidget {
  final String letter;
  final String userName;
  final String comment;
  final double rating;
  // final DateTime time;

  CommentWidget({
    Key? key,
    required this.letter,
    required this.userName,
    required this.comment,
    required this.rating,
    // required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: secondColor,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: CircleAvatar(child: Text(letter)),
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            userName,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          Container(
                            alignment: Alignment(-1, 0),
                            child: RatingBarIndicator(
                              rating: rating,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 20,
                              itemPadding: EdgeInsets.symmetric(horizontal: 0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                            ),
                          ),
                        ],
                      )),
                  Container(
                    width: double.infinity,
                    child: Text(
                      comment,
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  // Container(
                  //   width: double.infinity,
                  //   child: Text(
                  //     'Hoy',
                  //     style: TextStyle(fontSize: 13),
                  //   ),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
