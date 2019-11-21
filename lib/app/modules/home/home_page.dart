import 'package:flutter/material.dart';
import 'package:teste_navigation/app/app_bloc.dart';
import 'package:teste_navigation/app/app_module.dart';

import 'pages/config/config_page.dart';
import 'pages/dash/dash_page.dart';
import 'pages/search/search_page.dart';
import 'pages/shop/shop_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final AppBloc app = AppModule.to.getBloc<AppBloc>();     
  int selectedPage;
  List<Widget> pageOptions;

  @override
  void initState() {
    super.initState();

    selectedPage = 0;
    
    pageOptions = [
      DashPage(),
      SearchPage(),
      ShopPage(),
      ConfigPage(),
    ];

    app.tabController = TabController(
      vsync: this,
      length: pageOptions.length,
      initialIndex: selectedPage,
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            setState(() {
              app.tabController.index = index;
              selectedPage = index;
            });
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
        body: TabBarView(
          controller: app.tabController,
          physics: NeverScrollableScrollPhysics(),
          children: pageOptions,
        ),
    );
  }
}

