import 'package:flutter/material.dart';
import 'package:remove_hash_from_url_flutter_template/main.dart';

import 'main_page.dart';

class RouterClass {
  static Route? getRoute(RouteSettings settings) {
    Widget myWidget = MyHomePage(
      title: settings.name ?? "Default Page",
    );
    switch (settings.name) {
      case "/":
        myWidget = const MyHomePage(
          title: "First Page",
        );
        break;
      case "/home":
      case "/about":
        myWidget = const MyHomePage(
          title: "About",
        );
      default:
        myWidget = const MainPage();
    }
    return MaterialPageRoute(builder: (context) => myWidget);
  }
}
