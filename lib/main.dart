import 'package:flutter/material.dart';
import 'theme.dart';
import 'screen/mainScreen.dart';
import 'screen/splashScreen/splashScreen.dart';
import 'route.dart';

void main() {
  runApp(Sentimento());
}

class Sentimento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sentimento",
      initialRoute: SplashScreen.routeName,
      routes: route,
      theme: theme(),
    );
  }
}
