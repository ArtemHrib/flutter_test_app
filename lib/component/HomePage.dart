import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/util/RandomAlignmentUtil.dart';
import 'package:flutter_test_app/util/RandomColorUtil.dart';

class HomePage extends StatefulWidget {
  final Color _backgroundColor;
  final bool _changeBackgroundOpacity;
  final String _mainText;
  final Alignment _textAlignment;

  HomePage(this._backgroundColor, this._changeBackgroundOpacity, this._mainText,
      this._textAlignment);

  @override
  _HomePageState createState() => _HomePageState(
      _backgroundColor, _changeBackgroundOpacity, _mainText, _textAlignment);
}

class _HomePageState extends State<HomePage> {
  Color _backgroundColor;
  bool _changeBackgroundOpacity;
  String _mainText;
  Alignment _textAlignment;

  _HomePageState(this._backgroundColor, this._changeBackgroundOpacity,
      this._mainText, this._textAlignment);

  void regenerateBackgroundColor() {
    setState(() {
      _backgroundColor =
          RandomColorUtil.getRandomColor(_changeBackgroundOpacity);
    });
  }

  void regenerateAlignment() {
    setState(() {
      _textAlignment = RandomAlignmentUtil.getRandomAlignment();
      _backgroundColor =
          RandomColorUtil.getRandomColor(_changeBackgroundOpacity);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: regenerateBackgroundColor,
        child: Container(
          color: _backgroundColor,
          alignment: _textAlignment,
          child: InkWell(
            onTap: regenerateAlignment,
            child: Text(
              _mainText,
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
