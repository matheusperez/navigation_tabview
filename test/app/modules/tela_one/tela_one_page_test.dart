import 'package:bloc_pattern/bloc_pattern_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:teste_navigation/app/modules/tela_one/tela_one_page.dart';

main() {
  testWidgets('TelaOnePage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(TelaOnePage()));
    final titleFinder = find.text('TelaOne');
    expect(titleFinder, findsOneWidget);
  });
}
