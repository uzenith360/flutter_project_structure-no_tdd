/// This is a jump off point to the required route in your app

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import './core/config/application.dart';
import './core/config/routes.dart';

class App extends StatefulWidget {
  @override
  State createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  AppState() {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: 'My Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router.generator,
    );
//    print("initial route = ${app.initialRoute}");
    return app;
  }
}
