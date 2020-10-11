import 'dart:io';

import 'package:flutter/material.dart';
import 'FileManager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HexaCode',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/a': (BuildContext context) => FileManager(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  final myController = TextEditingController();
  int numLines = 0;
  String nLine = "1 -";
  void rLine() {
    setState(() {
      nLine = "";
    });
    String Result = "";
    for (int i = 0; i < numLines; i++) {
      Result = Result + "\n" + (i + 1).toString() + " -";
    }
    setState(() {
      nLine = Result.replaceFirst("\n", "");
    });
  }

  @override
  void initState() {
    super.initState();

    myController.addListener(() {});
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          ButtonBar(
            alignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            buttonPadding: EdgeInsets.zero,
            children: <Widget>[
              RaisedButton(
                color: Colors.blueGrey.shade100,
                hoverColor: Colors.lightBlue.shade200,
                onPressed: () {
                  Navigator.pushNamed(context, '/a');
                },
                child: Text('Files'),
              ),
              RaisedButton(
                color: Colors.blueGrey.shade100,
                hoverColor: Colors.lightBlue.shade200,
                onPressed: () {
                  exit(0);
                },
                child: Text('Close'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                nLine,
                textAlign: TextAlign.center,
                maxLines: null,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0,
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 0.0,
                    left: 20.0,
                    bottom: 0.0,
                    right: 0.0,
                  ),
                  child: TextField(
                    controller: myController,
                    showCursor: true,
                    onChanged: (text) {
                      setState(() {
                        numLines = '\n'.allMatches(text).length + 1;
                        rLine();
                      });
                    },
                    enableInteractiveSelection: true,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 26.0,
                    ),
                    maxLines: null,
                    keyboardType: TextInputType.multiline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
