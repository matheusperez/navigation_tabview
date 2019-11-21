import 'package:flutter/material.dart';
import 'package:teste_navigation/app/app_bloc.dart';
import 'package:teste_navigation/app/app_module.dart';
import 'package:teste_navigation/app/shareds/templates/template_tab_view.dart';

class TelaTwoPage extends StatefulWidget {
  final String title;
  const TelaTwoPage({Key key, this.title = "TelaTwo"}) : super(key: key);

  @override
  _TelaTwoPageState createState() => _TelaTwoPageState();
}

class _TelaTwoPageState extends State<TelaTwoPage> {
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
                'TELA 3',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.green,
              onPressed: null,
            ),
            Text('TELA 2', style: Theme.of(context).textTheme.display1),
          ],
        ),
      ),
    ),
    );
  }
}
