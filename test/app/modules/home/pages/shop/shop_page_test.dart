import 'package:bloc_pattern/bloc_pattern_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:teste_navigation/app/modules/home/pages/shop/shop_page.dart';

main() {
  testWidgets('ShopPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ShopPage()));
    final titleFinder = find.text('Shop');
    expect(titleFinder, findsOneWidget);
  });
}
