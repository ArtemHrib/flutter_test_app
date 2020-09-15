import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_test_app/util/RandomColorUtil.dart';

void main() {
  group('RandomColorUtil tests', () {
    test('Should generate a new color', () {
      bool changeOpacity = false;
      Color color;

      color = RandomColorUtil.getRandomColor(changeOpacity);

      expect(color != null, true);
    });
    test('Should generate a new color with const max opacity', () {
      bool changeOpacity = false;
      double maxOpacity = 1;
      Color color;

      color = RandomColorUtil.getRandomColor(changeOpacity);

      expect(color.opacity == maxOpacity, true);
    });
  });
}
