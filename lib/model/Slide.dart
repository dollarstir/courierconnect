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
    imTitle: 'About Us',
    imageDescription: 'What you should know about us.We are a personalised shipping service, tailored to your shopping and shipping needs to Ghana by air and sea, from our countries of operation.We provide personalized shipping solutions, by air and sea, tailored to your specific needs. Our service is excellent for individuals and small to large businesses, as we ship a wide range of package types. You can choose to have your package delivered to your door or pick up from our local office.'
  ),
  Slide(
    imageUrl: 'assets/images/ship6.jpg',
    imTitle: ' OUR PROMISE TO YOU',
    imageDescription: 'Every shipment will receive experienced professional, individual attention from order through pickup and delivery. If humanly possible, your goods will arrive on time, undamaged, every time.'
  )
];
