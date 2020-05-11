import 'package:bnstories/pages.dart';
import 'package:flutter/material.dart';
import 'pages.dart';

void main() =>runApp(BnApp());

class BnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BN Stories',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Story());
  }
}
