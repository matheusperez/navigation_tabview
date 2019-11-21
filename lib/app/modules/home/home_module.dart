import 'package:teste_navigation/app/modules/home/pages/config/config_bloc.dart';
import 'package:teste_navigation/app/modules/home/pages/shop/shop_bloc.dart';
import 'package:teste_navigation/app/modules/home/pages/search/search_bloc.dart';
import 'package:teste_navigation/app/modules/home/pages/dash/dash_bloc.dart';
import 'package:teste_navigation/app/modules/home/home_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:teste_navigation/app/modules/home/home_page.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => ConfigBloc()),
        Bloc((i) => ShopBloc()),
        Bloc((i) => SearchBloc()),
        Bloc((i) => DashBloc()),
        Bloc((i) => HomeBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();
}
