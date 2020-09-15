import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_app/util/RandomAlignmentUtil.dart';

import 'package:flutter_test_app/util/RandomColorUtil.dart';

void main() {
  group('RandomAlignmentUtil tests', () {
    test('Should generate a new alignment', () {
      Alignment testAlignment = RandomAlignmentUtil.getRandomAlignment();

      expect(testAlignment != null, true);
    });
  });
}
