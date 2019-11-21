import 'package:flutter/material.dart';
import 'package:teste_navigation/app/modules/tela_one/tela_one_page.dart';
import 'package:teste_navigation/app/shareds/animations/slide-left-transition.dart';

class DashPage extends StatefulWidget {
  @override
  _DashPageState createState() => _DashPageState();
}

class _DashPageState extends State<DashPage> {
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text(
                'TELA 1',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.purple,
              onPressed: () => Navigator.of(context).push(
                SlideLeftRoute(
                  TelaOnePage(),
                ),
              ),
            ),
            Text('TELA 0', style: textStyle),
          ],
        ),
      ),
    );
  }
}
