import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_app/TestApp.dart';

void main() {
  group(("TestAppWidget tests"), () {
    TestApp testApp;

    setUp(() {
      testApp = TestApp();
    });

    testWidgets('Should find main text widget by Key("mainText")',
        (WidgetTester tester) async {
      await tester.pumpWidget(testApp);

      Text mainText = tester.widget(find.byKey(Key("mainText")));

      expect(mainText != null, true);
    });

    testWidgets('Main text should be "Hey there"',
            (WidgetTester tester) async {
          await tester.pumpWidget(testApp);
          String mainText = "Hey there";

          Text mainTextWidget = tester.widget(find.byKey(Key("mainText")));

          expect(mainTextWidget.data == mainText, true);
        });

    testWidgets(
        'Should find container for text widget by Key("containerForText")',
        (WidgetTester tester) async {
      await tester.pumpWidget(testApp);

      Container containerForText =
          tester.widget(find.byKey(Key("containerForText")));

      expect(containerForText != null, true);
    });

    testWidgets('Container for main text widget should have center alignment',
        (WidgetTester tester) async {
      await tester.pumpWidget(testApp);
      Container containerForText =
          tester.widget(find.byKey(Key("containerForText")));
      Alignment centerAlignment = Alignment.center;

      Alignment testContainerAlignment = containerForText.alignment;

      expect(containerForText.alignment == centerAlignment, true);
    });
  });
}
