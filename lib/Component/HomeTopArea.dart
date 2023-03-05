import 'package:menlog/main.dart';
import 'package:flutter/material.dart';

class HomeTopArea extends StatelessWidget {
  final GestureTapCallback onPressed;

  const HomeTopArea({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.black,
          onPrimary: Colors.white,
          fixedSize: Size.fromWidth(350),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: onPressed,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('まる得ラーメン 大学前店 ',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                )),
            Text('ガチ徳ラーメン（大）',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                )),
            Text('2023-03-02'),
            Text('⭐︎⭐︎⭐︎⭐☆︎'),
            Container(
              alignment: Alignment.centerRight,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red),
                  color: Colors.red,
                ),
                child: Text(
                  'クイック入力済み',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
