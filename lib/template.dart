import 'package:flutter/material.dart';
import 'pages/homePage.dart';
import 'pages/linkPage.dart';

class Template extends StatefulWidget {
  @override
  _TemplateState createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  var homePage = new HomePage();
  var linkPage = new LinkPage();
  var _selectedPage = 0;
  var _pages;
  @override
  Widget build(BuildContext context) {
    _pages  = [
      homePage,
      linkPage,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Testando Flutter'),
        backgroundColor: Colors.lightGreen,
      ),
      body: _body(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home')),
          BottomNavigationBarItem(icon: Icon(Icons.link), title: Text('link')),
        ],
        fixedColor: Colors.lightGreenAccent,
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;        
          });
        },
      ),
    );
  }

  _body() {
    return Container(
      constraints: BoxConstraints.expand(),
      child: _pages[_selectedPage],
    );
  }
}