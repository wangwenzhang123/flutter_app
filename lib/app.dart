import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'grid/page.dart';
import 'list/page.dart';
import 'login/page.dart';

Widget createApp() {
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      'entrance_page': LoginPage(),
      'grid_page': GridPage(),
      'list_page':ListPage(),
    },
  );

  return MaterialApp(
    title: 'FishDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: routes.buildPage('entrance_page', null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
