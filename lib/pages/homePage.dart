import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _click = 0;
  var _NoClick = ' não';
  int _selectedImage = 0;
  var _images = [
    'images/1.png',
    'images/2.png',
    'images/3.png',
    'images/4.png',
    'images/5.png',
    'images/6.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(_images[_selectedImage], height: 100.0),
        Text('Click', 
          textAlign: TextAlign.center, 
          style: Theme.of(context).textTheme.display4
        ),
        Text('Você$_NoClick clicou $_click', 
          textAlign: TextAlign.center, 
          style: Theme.of(context).textTheme.display1.copyWith(fontWeight: FontWeight.w300)
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                _click ++;

                int selectedImage = _click ;
                _selectedImage = selectedImage;
                _NoClick = '';
                           

                if (selectedImage > 5) {
                  _selectedImage = 0;
                  _click = 0;
                }
              });
            },
            child: Icon(Icons.add)
          )
        )
      ]
    );
  }
}