import 'package:flutter/material.dart';
import 'HomePage.dart';

class QuickInputPage extends StatefulWidget {
  const QuickInputPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<QuickInputPage> createState() => _QuickInputPageState();
}

class _QuickInputPageState extends State<QuickInputPage> {

  void _movePage() async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return HomePage(title: 'title');
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
        child: Text('クイック入力'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _movePage,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}