import 'dart:math';

import 'package:flutter/cupertino.dart';

class RandomAlignmentUtil {
    static Random _random = Random();

    static Alignment getRandomAlignment(){
        double xPosition = _random.nextDouble()*2-1;
        double yPosition = _random.nextDouble()*2-1;
        return Alignment(xPosition, yPosition);
    }

    static set random(Random value) {
    _random = value;
  }
}