import 'package:bloc_pattern/bloc_pattern_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:teste_navigation/app/modules/home/pages/config/config_page.dart';

main() {
  testWidgets('ConfigPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ConfigPage()));
    final titleFinder = find.text('Config');
    expect(titleFinder, findsOneWidget);
  });
}
