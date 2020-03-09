import 'package:culc/controllers/keyController.dart';
import 'package:culc/controllers/processor.dart';
import 'package:flutter/material.dart';

import 'display.dart';
import 'keyPad.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String _outputParams;
  String _outputResult;

  @override
  void initState() {

    KeyController.listen((event) => Processor.process(event));
    Processor.paramsListen((data) => setState(() { _outputParams = data; }));
    Processor.resultListen((data) => setState(() { _outputResult = data; }));
    Processor.refresh();
    super.initState();
  }

  @override
  void dispose() {

    KeyController.dispose();
    Processor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Display(value: _outputParams,out: _outputResult,),
            KeyPad()
          ],
        )
    );
  }
}