import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
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
            ),
            Expanded(
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
            )
          ],
        )
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
