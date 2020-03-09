import 'package:flutter/material.dart';

class Display extends StatelessWidget{
  Display({ Key key, this.value,}) : super(key: key);

  final String value;
  String get _output => value.toString();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child:Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Container(
              constraints: BoxConstraints.expand(),
              color: Colors.black38,
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    _output,
                    style: TextStyle(fontSize: 32.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              constraints: BoxConstraints.expand(),
              color: Colors.black12,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Output',
                    style: TextStyle(fontSize: 32.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}