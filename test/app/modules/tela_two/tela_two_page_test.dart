import 'package:bloc_pattern/bloc_pattern_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:teste_navigation/app/modules/tela_two/tela_two_page.dart';

main() {
  testWidgets('TelaTwoPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(TelaTwoPage(title: 'TelaTwo')));
    final titleFinder = find.text('TelaTwo');
    expect(titleFinder, findsOneWidget);
  });
}
