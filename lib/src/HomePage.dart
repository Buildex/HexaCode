import 'dart:io';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ButtonBar(
            alignment: MainAxisAlignment.start,
            buttonMinWidth: 50.0,
            children: [
              FlatButton(
                child: Text('Close'),
                color: Colors.blue,
                onPressed: () => {exit(0)},
              ),
            ],
          ),
          Expanded(
            flex: 10,
            child: TextField(
              showCursor: true,
              style: TextStyle(
                fontSize: 26.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "",
                labelStyle: TextStyle(
                  fontSize: 26.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
