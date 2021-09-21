import 'package:flutter/material.dart';
import 'second_file.dart';
import 'widgets/widget_second.dart';
import 'widgets/widget_third.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        '/': (context) => const MyAppSecond(),
        '/second': (context) => const HelloWid(),
        '/third': (context) => const PointFile(),
      },
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          return Text('hello');
        });
      },
    );
  }
}

class MyAppSecond extends StatelessWidget {
  const MyAppSecond({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 120),
            child: Row(
              children: [
                Icon(Icons.image),
                Text(
                  'вконтакте',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                  ),
                ),
              ],
            )),
      ),
      body: Point(),
    );
  }
}

class Point extends StatelessWidget {
  const Point({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(children: [
      Header(),
      Container(
        width: double.infinity,
        height: 15,
        color: Colors.black,
      ), //5DF61
      Padding(
        padding: const EdgeInsets.only(top: 7, left: 7, right: 7),
        child: Text(
          'Мобильная версия поможет вам оставаться ВКонтакте, даже если вы далеко от компьютера.',
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(500, 93, 95, 97),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Bodies(),
      Text_Button(),
      Padding(
        padding: EdgeInsets.only(top: 50, left: 10),
        child: Text('Впервые ВКонтакте?',
            style: TextStyle(
                color: Color.fromARGB(500, 93, 95, 97), fontSize: 17)),
      ),
      SizedBox(
        height: 10,
      ),
      ElevButton2(),
      SizedBox(
        height: 15,
      ),
      ElevButton3(),
      SizedBox(
        height: 15,
      ),
      Container(
        width: double.infinity,
        height: 172.42,
        color: Colors.black,
        child: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 120, left: 90),
                child: Text('Українська',
                    style: TextStyle(
                        color: Color.fromARGB(500, 93, 95, 97), fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 120, left: 10),
                child: Text('English',
                    style: TextStyle(
                        color: Color.fromARGB(500, 93, 95, 97), fontSize: 15)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 120, left: 10),
                child: Text('all languages >>',
                    style: TextStyle(
                        color: Color.fromARGB(500, 93, 95, 97), fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    ]));
  }
}
