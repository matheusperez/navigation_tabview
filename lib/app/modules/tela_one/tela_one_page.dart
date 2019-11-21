import 'package:flutter/material.dart';
import 'package:teste_navigation/app/app_bloc.dart';
import 'package:teste_navigation/app/app_module.dart';
import 'package:teste_navigation/app/modules/tela_two/tela_two_module.dart';
import 'package:teste_navigation/app/shareds/animations/slide-left-transition.dart';
import 'package:teste_navigation/app/shareds/templates/template_tab_view.dart';

class TelaOnePage extends StatefulWidget {
  @override
  _TelaOnePageState createState() => _TelaOnePageState();
}

class _TelaOnePageState extends State<TelaOnePage> {
  final AppBloc app = AppModule.to.getBloc<AppBloc>();
  @override
  Widget build(BuildContext context) {
    return TemplateTabView(
      context,
      body: Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text(
                'TELA 2',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.green,
              onPressed: () => Navigator.of(context).push(
                SlideLeftRoute(
                  TelaTwoModule(),
                ),
              ),
            ),
            Text('TELA 1', style: Theme.of(context).textTheme.display1),
          ],
        ),
      ),
    ),
    );
  }
}
