import 'package:flutter/material.dart';

class HelloWid extends StatefulWidget {
  const HelloWid({Key? key}) : super(key: key);

  @override
  State<HelloWid> createState() => _HelloWidState();
}

class _HelloWidState extends State<HelloWid> {
  List<Widget> widg = [
    Text('home'),
    Text('profile'),
    Text('share'),
  ];

  _secondwidget() {
    Navigator.of(context).pushNamed('/third');
  }

  int current = 0;
  _onTappic(index) {
    setState(() {
      if (index == current) return;
      current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share),
            label: 'share',
          ),
        ],
        onTap: _onTappic,
      ),
      body: Container(
        width: 500,
        height: 500,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _secondwidget,
              child: Container(
                child: Text('First'),
              ),
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.blue,
              child: Center(child: widg[current]),
            )
          ],
        ),
      ),
    );
  }
}
