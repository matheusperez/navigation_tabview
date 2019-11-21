import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:teste_navigation/app/modules/home/pages/shop/shop_bloc.dart';
import 'package:teste_navigation/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  ShopBloc bloc;

  setUp(() {
    bloc = HomeModule.to.bloc<ShopBloc>();
  });

  group('ShopBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<ShopBloc>());
    });
  });
}
