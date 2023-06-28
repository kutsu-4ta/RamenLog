import 'package:flutter/material.dart';
import 'BarChart.dart';

class HomeMiddleArea extends StatelessWidget {
  final double height;
  const HomeMiddleArea({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      margin: EdgeInsets.only(
          top: 15
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: AssetImage('Images/HomeMyRamenDataBackground.png'),
            fit: BoxFit.cover,
          )
      ),
      child: Row(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: PieChartSample2(),
          ),
        ],
      ),
    );
  }
}
