import 'package:flutter/material.dart';
import '../router/router.dart';

class ThemeApp extends StatelessWidget {
  const ThemeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        primarySwatch: Colors.red,
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
              fontSize: 30,
            ),
            bodySmall: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 222, 222, 222),
            ),
            titleMedium: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            titleLarge: TextStyle(color: Colors.white, fontSize: 35),
            titleSmall: TextStyle(
              fontSize: 17,
              color: Colors.white,
              height: 1.5,
            ),
            labelSmall: TextStyle(fontSize: 15, color: Colors.black87),
            labelMedium: TextStyle(fontSize: 18, color: Colors.white),
            headlineSmall: TextStyle(
              fontSize: 15,
              color: Color.fromRGBO(224, 224, 224, 1),
            )),
      ),
      routes: routes,
    );
  }
}
