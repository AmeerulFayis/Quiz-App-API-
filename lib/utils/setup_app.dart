import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../di/di.dart';

setupApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection.init();
}
