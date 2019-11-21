import 'package:teste_navigation/app/modules/tela_two/tela_two_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:teste_navigation/app/modules/tela_two/tela_two_page.dart';

class TelaTwoModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => TelaTwoBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => TelaTwoPage();

  static Inject get to => Inject<TelaTwoModule>.of();
}
