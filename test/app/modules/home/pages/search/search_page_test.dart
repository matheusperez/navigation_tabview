import 'package:bloc_pattern/bloc_pattern_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:teste_navigation/app/modules/home/pages/search/search_page.dart';

main() {
  testWidgets('SearchPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SearchPage()));
    final titleFinder = find.text('Search');
    expect(titleFinder, findsOneWidget);
  });
}
