import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:homeversity_student/markAttendance.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final Map<int, Color> color = {
  50: const Color.fromRGBO(30, 94, 255, .1),
  100: const Color.fromRGBO(30, 94, 255, .2),
  200: const Color.fromRGBO(30, 94, 255, .3),
  300: const Color.fromRGBO(30, 94, 255, .4),
  400: const Color.fromRGBO(30, 94, 255, .5),
  500: const Color.fromRGBO(30, 94, 255, .6),
  600: const Color.fromRGBO(30, 94, 255, .7),
  700: const Color.fromRGBO(30, 94, 255, .8),
  800: const Color.fromRGBO(30, 94, 255, .9),
  900: const Color.fromRGBO(30, 94, 255, 1),
};

final MaterialColor customColor = MaterialColor(0xff1e5eff, color);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: customColor,
        primaryColor: const Color.fromARGB(255, 30, 94, 255),
      ),
      home: MarkAttendance(),
    );
  }
}
