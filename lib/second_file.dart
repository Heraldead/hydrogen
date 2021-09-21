import 'widgets/widget_second.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      child: TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(
              Icons.phone_android,
              color: Color.fromARGB(1000, 113, 170, 235),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Установить приложение ВКонтакте',
              style: TextStyle(
                color: Color.fromARGB(1000, 100, 149, 255),
                fontSize: 15,
              ),
            ),
            SizedBox(
              width: 60,
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color.fromARGB(1000, 113, 170, 235),
            ),
          ],
        ),
      ),
    );
  }
}

// class TextFields extends StatelessWidget {
//   TextFields({Key? key}) : super(key: key);
//   final logincontroller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 7),
//       width: 390,
//       child: TextField(
//           controller: logincontroller,
//           decoration: InputDecoration(
//               hintText: 'Телефон или email',
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.red, width: 10),
//                 borderRadius: BorderRadius.all(Radius.circular(8)),
//               ),
//               isCollapsed: true,
//               contentPadding:
//                   EdgeInsets.symmetric(horizontal: 10, vertical: 10))),
//     );
//   }
// }

// class TextFields2 extends StatelessWidget {
//   TextFields2({Key? key}) : super(key: key);
//   final passwordcontroller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 7),
//       width: 390,
//       child: TextField(
//           controller: passwordcontroller,
//           decoration: InputDecoration(
//               hintText: 'Пароль',
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.red, width: 10),
//                 borderRadius: BorderRadius.all(Radius.circular(8)),
//               ),
//               isCollapsed: true,
//               contentPadding:
//                   EdgeInsets.symmetric(horizontal: 10, vertical: 10))),
//     );
//   }
// }

// class ElevButton extends StatefulWidget {
//   const ElevButton({Key? key}) : super(key: key);

//   @override
//   _ElevButtonState createState() => _ElevButtonState();
// }

// class _ElevButtonState extends State<ElevButton> {
//   validation() {}
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 7),
//       width: 390,
//       height: 45,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(50),
//       ),
//       child: ElevatedButton(
//         onPressed: () {},
//         child: Text(
//           'Войти',
//           style: TextStyle(color: Colors.black, fontSize: 18),
//         ),
//         style: ButtonStyle(
//           overlayColor: MaterialStateProperty.all(Colors.grey),
//           shape: MaterialStateProperty.all(RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15),
//           )),
//           backgroundColor: MaterialStateProperty.all(Colors.white),
//         ),
//       ),
//     );
//   }
// }

class Bodies extends StatefulWidget {
  const Bodies({Key? key}) : super(key: key);

  @override
  _BodiesState createState() => _BodiesState();
}

class _BodiesState extends State<Bodies> {
  String name = 'mikail';
  String password = '123';
  final logincontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  String answer = '';
  void buttonFunction() {
    setState(() {
      if (logincontroller.text.toLowerCase() == name.toLowerCase() &&
          passwordcontroller.text.toLowerCase() == password.toLowerCase()) {
        Navigator.of(context).pushReplacementNamed('/second');
      } else if (logincontroller.text.toLowerCase() != name.toLowerCase() ||
          passwordcontroller.text.toLowerCase() != password.toLowerCase()) {
        answer = 'Datas incorrect';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Text(
            '$answer',
            style: TextStyle(
                color: answer == 'Datas are right' ? Colors.green : Colors.red),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 7),
          width: 390,
          child: TextField(
              controller: logincontroller,
              decoration: InputDecoration(
                  hintText: 'Телефон или email',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 10),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  isCollapsed: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10))),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 7),
          width: 390,
          child: TextField(
              obscureText: true,
              controller: passwordcontroller,
              decoration: InputDecoration(
                  hintText: 'Пароль',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 10),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  isCollapsed: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10))),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 7),
          width: 390,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          child: ElevatedButton(
            onPressed: buttonFunction,
            child: Text(
              'Войти',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.grey),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              )),
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
          ),
        )
      ],
    ));
  }
}

class Text_Button extends StatefulWidget {
  const Text_Button({Key? key}) : super(key: key);

  @override
  _Text_ButtonState createState() => _Text_ButtonState();
}

class _Text_ButtonState extends State<Text_Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Забыли пароль?',
          style: TextStyle(color: Colors.blue, fontSize: 17),
        ),
      ),
    );
  }
}

class ElevButton2 extends StatefulWidget {
  const ElevButton2({Key? key}) : super(key: key);

  @override
  _ElevButton2State createState() => _ElevButton2State();
}

class _ElevButton2State extends State<ElevButton2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7),
      width: 390,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Зарегистрироваться',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )),
          backgroundColor: MaterialStateProperty.all(Colors.green),
        ),
      ),
    );
  }
}

class ElevButton3 extends StatefulWidget {
  const ElevButton3({Key? key}) : super(key: key);

  @override
  _ElevButton3State createState() => _ElevButton3State();
}

class _ElevButton3State extends State<ElevButton3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7),
      width: 390,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Войти через Facebook',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )),
          backgroundColor: MaterialStateProperty.all(Colors.grey[900]),
        ),
      ),
    );
  }
}
