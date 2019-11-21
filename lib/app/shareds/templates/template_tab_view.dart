import 'package:flutter/material.dart';
import 'package:teste_navigation/app/app_bloc.dart';
import 'package:teste_navigation/app/app_module.dart';
import 'package:teste_navigation/app/modules/home/pages/config/config_page.dart';
import 'package:teste_navigation/app/modules/home/pages/dash/dash_page.dart';
import 'package:teste_navigation/app/modules/home/pages/search/search_page.dart';
import 'package:teste_navigation/app/modules/home/pages/shop/shop_page.dart';

class TemplateTabView extends StatelessWidget {
  final AppBloc app = AppModule.to.getBloc<AppBloc>();
  final BuildContext context;
  final Widget body;

  TemplateTabView(
    this.context, {
    this.body,
  });

  final List<Widget> pageOptions = [
    DashPage(),
    SearchPage(),
    ShopPage(),
    ConfigPage(),
  ];

  @override
  Widget build(BuildContext _context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        title: Text('Navigation within Tabview'),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        currentIndex: app.tabController.index,
        onTap: (int index) {
          app.tabController.index = index;
          Navigator.popUntil(context, ModalRoute.withName('/'));
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        iconSize: 30.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Container(height: 10),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Container(height: 10),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Container(height: 10),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Container(height: 10),
          ),
        ],
      ),
      body: body,
    );
  }
}
