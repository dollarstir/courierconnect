import 'package:flutter/material.dart';
import '../model/Slide.dart';

class SliderItem extends StatelessWidget {
  final int index;
  SliderItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage(Slidelist[index].imageUrl),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          Slidelist[index].imTitle,
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          Slidelist[index].imageDescription,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
