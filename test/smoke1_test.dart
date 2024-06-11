import 'package:flutter_test/flutter_test.dart';

import 'package:name_your_price/main.dart';

void main() {
  testWidgets('smoke1 test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
  });
}
