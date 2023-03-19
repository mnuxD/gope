import 'package:flutter/material.dart';

class PlacePhotos extends StatelessWidget {
  final List<String> imageUrls = [
    'Assets/Images/rupac1.jpg',
    'Assets/Images/rupac2.jpg',
    'Assets/Images/rupac3.jpg',
    'Assets/Images/rupac4.jpg',
    'Assets/Images/rupac5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(0),
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        crossAxisCount: 3,
        children: List.generate(
          imageUrls.length,
          (index) {
            return Padding(
              padding: const EdgeInsets.all(0),
              child: Image.asset(
                imageUrls[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color.fromRGBO(85, 79, 252, 1),
      ),
    );
  }
}
