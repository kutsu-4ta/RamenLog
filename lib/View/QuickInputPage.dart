import 'package:flutter/material.dart';
import 'HomePage.dart';
import '../Component/DropDownButton.dart';
import 'dart:io';
import 'package:camera/camera.dart';
import '../Component/CameraComponent.dart';

class QuickInputPage extends StatefulWidget {
  const QuickInputPage({Key? key,
    required this.title,
    // required this.camera
  }) : super(key: key);

  final String title;
  // final CameraDescription camera;

  @override
  State<QuickInputPage> createState() => _QuickInputPageState();
}

const  List<String> ramenList = <String>['細麺', '太麺', '平麺', '縮れ麺', '辛麺麺','多加水麺','変わり種'];
const  List<String> soupList = <String>['豚骨', '醤油', '塩', '味噌', '魚介','鶏ガラ','坦々'];

class _QuickInputPageState extends State<QuickInputPage> {

  void _movePage() async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return HomePage(
              title: widget.title,
              // camera: widget.camera
          );
        },
      ),
    );
  }

  void _takePicture() async {
    // await Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (context) {
    //       return TakePictureScreen(camera: widget.camera);
    //     },
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      backgroundColor: Colors.white10,
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(
                        top: 20,
                      bottom: 10
                    ),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black54,
                        onPrimary: Colors.white,
                      ),
                        onPressed: _movePage,
                        icon: Icon(Icons.arrow_back_ios),
                        label: Text('Back'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    width: 100,
                    child: Text(
                      '店名',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextField(
                        enabled: true,
                        maxLength: 10,
                        obscureText: false,
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.white,

                        ),
                        decoration: InputDecoration(
                            hintText: "最強ラーメン",
                          hintStyle: TextStyle(
                            color: Colors.white30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ), // 入力フォーム
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    width: 100,
                    child: Text(
                      'メニュー名',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextField(
                        enabled: true,
                        maxLength: 10,
                        obscureText: false,
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.white,

                        ),
                        decoration: InputDecoration(
                          hintText: "最強とんこつ",
                          hintStyle: TextStyle(
                            color: Colors.white30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ), // 入力フォーム
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    width: 100,
                    child: Text(
                      '麺',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child:DropdownButtonMenu(
                        list:ramenList,
                      ),
                    ),
                  ),
                ],
              ), // 入力フォーム
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    width: 100,
                    child: Text(
                      'スープ',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child:DropdownButtonMenu(
                        list:soupList,
                      ),
                    ),
                  ),
                ],
              ), // 入力フォーム
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
                          width: 150,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white24,
                                onPrimary: Colors.white,
                                fixedSize: Size.fromWidth(350),
                                side: BorderSide(
                                  // color: Colors.white,
                                ),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )
                            ),
                            onPressed: _movePage,
                            icon: Icon(Icons.cancel),
                            label: Text('キャンセル',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                )
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          width: 150,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white24,
                                onPrimary: Colors.white,
                                fixedSize: Size.fromWidth(350),
                                side: const BorderSide(
                                  // color: Colors.white,
                                ),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )
                            ),
                            onPressed: _movePage,
                            icon: Icon(Icons.app_registration),
                            label: const Text('保存',
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
              ),
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
                          width: 150,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white24,
                                onPrimary: Colors.white,
                                fixedSize: Size.fromWidth(350),
                                side: BorderSide(
                                  // color: Colors.white,
                                ),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )
                            ),
                            onPressed: _takePicture,
                            icon: Icon(Icons.camera),
                            label: const Text('カメラ',
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
              ),
            ],
          ),
        ),
        ),
    );
  }
}