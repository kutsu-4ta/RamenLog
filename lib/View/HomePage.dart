import 'dart:math';
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
      // ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        padding: const EdgeInsets.all(5),
                        width: 350,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          // borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text('メニュー群'),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Expanded(
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 180,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.brown,
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
                                  )),
                              onPressed: _movePage,
                              child: Container(
                                padding: const EdgeInsets.all(6),
                                child: Column(
                                  children: <Widget>[
                                    Text('クイック入力',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 180,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.brown,
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
                              child: Container(
                                padding: const EdgeInsets.all(6),
                                child: Column(
                                  children: <Widget>[
                                    Text('マイログ',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
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
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTapped,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.favorite), label: 'クイック入力'),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: 'マイデータ'),
      //   ],
      //   type: BottomNavigationBarType.fixed,
      // )
    );
  }
}
