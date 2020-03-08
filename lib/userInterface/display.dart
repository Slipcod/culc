import 'package:flutter/material.dart';

class Display extends StatelessWidget{
  Display({ Key key}) : super(key: key);
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
                    'Display',
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