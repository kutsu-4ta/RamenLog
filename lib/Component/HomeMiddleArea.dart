import 'package:flutter/material.dart';

class HomeMiddleArea extends StatelessWidget {
  final double height;
  const HomeMiddleArea({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      margin: EdgeInsets.only(
          top: 40
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
            image: AssetImage('Images/HomeMyRamenDataBackground.png'),
            fit: BoxFit.cover,
          )
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            child: Text('MyRamenData',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
