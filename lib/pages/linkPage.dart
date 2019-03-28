import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkPage extends StatefulWidget {
  @override
  _LinkPageState createState() => _LinkPageState();
}

class _LinkPageState extends State<LinkPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Visite:', textAlign: TextAlign.center, style: Theme.of(context).textTheme.display3),
        RaisedButton(
          child: Text('fapema.br', textAlign: TextAlign.center),
          onPressed: () {
            launch('http://www.fapema.br');
          },
        )
      ],
    );
  }
}