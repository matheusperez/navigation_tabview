import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:teste_navigation/app/modules/tela_one/tela_one_bloc.dart';
import 'package:teste_navigation/app/app_module.dart';

void main() {
  initModule(AppModule());
  TelaOneBloc bloc;

  setUp(() {
    bloc = AppModule.to.bloc<TelaOneBloc>();
  });

  group('TelaOneBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<TelaOneBloc>());
    });
  });
}
