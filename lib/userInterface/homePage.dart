import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Display(),
            KeyPad()
          ],
        )
    );
  }
}

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

class KeyPad extends StatelessWidget{
  KeyPad({ Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child:Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                _buildButton(flex: 8, letter: "Numbers", color: Colors.black12),
                _buildButton(flex: 8, letter: "Numbers", color: Colors.black12),
                _buildButton(flex: 8, letter: "Numbers", color: Colors.black12),
                _buildButton(flex: 8, letter: "Numbers", color: Colors.black12),
              ],
            ),

          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                _buildButton(flex: 8, letter: "Numbers", color: Colors.black12),
                _buildButton(flex: 8, letter: "Numbers", color: Colors.black12),
                _buildButton(flex: 8, letter: "Numbers", color: Colors.black12),
                _buildButton(flex: 8, letter: "Numbers", color: Colors.black12),
              ],
            ),

          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                _buildButton(flex: 8, letter: "Numbers", color: Colors.black12),
                _buildButton(flex: 8, letter: "Numbers", color: Colors.black12),
                _buildButton(flex: 8, letter: "Numbers", color: Colors.black12),
                _buildButton(flex: 8, letter: "Numbers", color: Colors.black12),
              ],
            ),

          ),
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                _buildButton(flex: 8, letter: "signs", color: Colors.brown),
                _buildButton(flex: 8, letter: "signs", color: Colors.brown),
                _buildButton(flex: 8, letter: "signs", color: Colors.brown),
                _buildButton(flex: 8, letter: "signs", color: Colors.brown),


              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton({int flex,String letter,  Color color, Color textColor = Colors.white}) {
    return Expanded(
        child: Container(
            width: double.infinity,
            child:OutlineButton(
                borderSide: BorderSide(width: 0.0,color: Colors.white),
                color: color,
                textColor: Colors.black,
                onPressed: (){},
                child: Text("$letter")
            ))
    );
  }
}