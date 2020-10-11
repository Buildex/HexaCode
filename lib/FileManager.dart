import 'package:flutter/material.dart';

class FileManager extends StatefulWidget {
  @override
  _FileManager createState() => _FileManager();
}

class _FileManager extends State<FileManager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Files Manager',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade300,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('grh'),
          ],
        ),
      ),
    );
  }
}
