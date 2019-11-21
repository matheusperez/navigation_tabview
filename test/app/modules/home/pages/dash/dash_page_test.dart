import 'package:bloc_pattern/bloc_pattern_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:teste_navigation/app/modules/home/pages/dash/dash_page.dart';

main() {
  testWidgets('DashPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(DashPage()));
    final titleFinder = find.text('Dash');
    expect(titleFinder, findsOneWidget);
  });
}
