import 'dart:math';
import '../Component/HomeTopArea.dart';
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
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: HomeTopArea(
                          onPressed: _movePage
                      ),
                        // child: ElevatedButton(
                        //
                        //   style: ElevatedButton.styleFrom(
                        //     primary: Colors.black,
                        //       onPrimary: Colors.white,
                        //       fixedSize: Size.fromWidth(350),
                        //       shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(20))),
                        //   onPressed: _movePage,
                        //   child: Container(
                        //     alignment: Alignment.centerLeft,
                        //     padding: const EdgeInsets.all(6),
                        //         child: Column(
                        //           crossAxisAlignment: CrossAxisAlignment.start,
                        //           children: <Widget>[
                        //             Text('まる得ラーメン 大学前店 ',
                        //                 style: TextStyle(
                        //                   fontSize: 20,
                        //                 color: Colors.white,
                        //               )
                        //             ),
                        //             Text('ガチ徳ラーメン（大）',
                        //                 style: TextStyle(
                        //                   fontSize: 15,
                        //                   color: Colors.white,
                        //                 )
                        //             ),
                        //             Text('2023-03-02'),
                        //             Text('⭐︎⭐︎⭐︎⭐☆︎'),
                        //             Container(
                        //               alignment: Alignment.centerRight,
                        //               child: Container(
                        //                 padding: const EdgeInsets.all(4),
                        //                 decoration: BoxDecoration(
                        //                   borderRadius: BorderRadius.circular(10),
                        //                   border: Border.all(color: Colors.red),
                        //                   color: Colors.red,
                        //                 ),
                        //                 child: Text(
                        //                   'クイック入力済み',
                        //                   style: TextStyle(
                        //                     color: Colors.white,
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        // ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width: max(100, 350),
                          height: max(100, 250),
                          margin: EdgeInsets.only(
                            top: 40,
                          ),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextButton(
                            child: Text('マイラーメンデータ'),
                            onPressed: _movePage,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                            top: 40,
                          ),
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
                    Expanded(
                        child:Text('')
                    ),
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border:                                             Border.all(color: Colors.red),
                        color: Colors.red,
                      ),
                      child: Text(
                        'クイック入力済み',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'クイック入力'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'マイデータ'),
          ],
          type: BottomNavigationBarType.fixed,
        ));
  }
}