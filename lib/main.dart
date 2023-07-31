import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'hausreparatur_init.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Color.fromARGB(255, 0, 0, 0)));
  runApp(const HausReparatur());
}
