import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:teste_navigation/app/modules/tela_two/tela_two_bloc.dart';
import 'package:teste_navigation/app/modules/tela_two/tela_two_module.dart';

void main() {
  initModule(TelaTwoModule());
  TelaTwoBloc bloc;

  setUp(() {
    bloc = TelaTwoModule.to.bloc<TelaTwoBloc>();
  });

  group('TelaTwoBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<TelaTwoBloc>());
    });
  });
}
