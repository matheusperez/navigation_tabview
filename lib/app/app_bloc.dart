import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

class AppBloc extends BlocBase {
  TabController tabController;

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
