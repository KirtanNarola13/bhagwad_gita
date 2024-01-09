import 'package:flutter/material.dart';
import 'package:github/Moduls/Screens/HomeScreen/Views/home_screen.dart';

import 'Moduls/Screens/SplashScreen/splsh_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => SplashScreen(),
        'home_screen': (context) => HomeScreen(),
      },
    ),
  );
}
