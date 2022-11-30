import 'package:flutter/material.dart';
import 'package:quizapp/presentation/routes/routes_constants.dart';

import '../screens/home_screen/home_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> get routes => {
        RouteList.initial: (context) => HomeScreen(),
      };
}
