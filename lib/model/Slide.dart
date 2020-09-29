import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String imTitle;
  final String imageDescription;

  Slide(
    {
      @required this.imageUrl,
      @required this.imTitle, 
      @required this.imageDescription
    });
}

final Slidelist = [
  Slide(
    imageUrl: 'assets/images/p1.jpg',
    imTitle: 'WHAT DOES IT ENTAILS?',
    imageDescription: 'When a package is shipped, then it officially starts its journey to its destination. It\'s common to see tracking information like \“shipped\”, \“picked up\”, \“shipment received\”, \“arrived for collection\” in the first few days after the package is transferred to the shipping company'
  ),
  Slide(
    imageUrl: 'assets/images/ship4.jpg',
    imTitle: 'Second Title',
    imageDescription: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ... packages and web page editors now use Lorem Ipsum as their default model text, and a search ... Contrary to popular belief, Lorem Ipsum is not simply random text.'
  ),
  Slide(
    imageUrl: 'assets/images/ship6.jpg',
    imTitle: ' Third  Title',
    imageDescription: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ... packages and web page editors now use Lorem Ipsum as their default model text, and a search ... Contrary to popular belief, Lorem Ipsum is not simply random text.'
  )
];
