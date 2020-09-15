import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'component/HomePage.dart';

class TestApp extends StatelessWidget {
  final Color _backgroundFirstColor = Color.fromRGBO(102, 178, 255, 1);
  final bool _changeOpacity = false;
  final String _mainText = "Hey there";
  final Alignment _mainTextAlignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter test application',
      home: HomePage(
          _backgroundFirstColor, _changeOpacity, _mainText, _mainTextAlignment),
    );
  }
}
