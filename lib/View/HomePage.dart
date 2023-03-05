import 'dart:math';
import 'package:flutter/rendering.dart';

import '../Component/HomeTopArea.dart';
import '../Component/HomeMiddleArea.dart';
import 'package:flutter/material.dart';
import 'package:menlog/View/QuickInputPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _movePage() async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return QuickInputPage(title: 'title');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      //   backgroundColor: Colors.black12,
      //   elevation: 0,
      // ),
      backgroundColor: Colors.white54,
      body: Center(
        child: Container(

          margin: EdgeInsets.only(top: 50),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: HomeTopArea(onPressed: _movePage),
                  ),
                ],
              ), // クイック入力
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: HomeMiddleArea(
                      height: 300,
                    ),
                  ),
                ],
              ), // マイラーメンデータ
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 100,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.primaries.last,
                                onPrimary: Colors.white,
                                fixedSize: Size.fromWidth(350),
                                side: BorderSide(
                                  color: Colors.white,
                                ),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )
                            ),
                            onPressed: _movePage,
                            icon: Icon(Icons.location_on),
                            label: Text('探す',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 100,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.primaries.last,
                                onPrimary: Colors.white,
                                fixedSize: Size.fromWidth(350),
                                side: BorderSide(
                                  color: Colors.white,
                                ),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )
                            ),
                            onPressed: _movePage,
                            icon: Icon(Icons.share),
                            label: Text('勧める',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                )
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 100,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.primaries.last,
                                onPrimary: Colors.white,
                                fixedSize: Size.fromWidth(350),
                                side: BorderSide(
                                  color: Colors.white,
                                ),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )
                            ),
                            onPressed: _movePage,
                            icon: Icon(Icons.person),
                            label: Text('設定',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ), // メニューエリア
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Expanded(
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 190,
                            height: 60,
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.primaries.last,
                                  onPrimary: Colors.white,
                                  fixedSize: Size.fromWidth(350),
                                  side: BorderSide(
                                    color: Colors.white,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                    ),
                                  )
                              ),
                              onPressed: _movePage,
                              icon: Icon(Icons.edit),
                              label: Text('クイック入力',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  )
                              ),
                            ),
                          ),
                          Container(
                            width: 190,
                            height: 60,
                            child: ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.primaries.last,
                                onPrimary: Colors.white,
                                fixedSize: Size.fromWidth(350),
                                side: BorderSide(
                                  color: Colors.white,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                              ),
                              onPressed: _movePage,
                              icon: Icon(Icons.format_list_bulleted),
                              label: Text('マイログ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  )
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ), // ボトムボタン
            ],
          ),
        ),
      ),
    );
  }
}
