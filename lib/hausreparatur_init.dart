import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'login_page.dart';

class HausReparatur extends StatelessWidget {
  const HausReparatur({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hausreparatur',
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        primaryColor: const Color(0xFFF9A720),
        primaryColorLight: const Color.fromARGB(255, 0, 0, 0),
        primaryColorDark: const Color.fromARGB(255, 255, 255, 255),
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFFF9A720),
            //iconTheme: IconThemeData(color: Colors.red),
            //actionsIconTheme: IconThemeData(color: Colors.amber),
            centerTitle: true,
            elevation: 0,
            titleTextStyle: TextStyle(fontFamily: 'Helvetica', fontSize: 20)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 145, 96, 18),
            ),
            backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 217, 144, 27),
            ),
            foregroundColor: MaterialStateProperty.all(const Color(0xFFFFFFFF)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFF9A720),
        primaryColorLight: const Color.fromARGB(255, 255, 255, 255),
        primaryColorDark: const Color.fromARGB(255, 52, 52, 52),
        scaffoldBackgroundColor: const Color(0xFF000000),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFFF9A720),
            //iconTheme: IconThemeData(color: Colors.red),
            //actionsIconTheme: IconThemeData(color: Colors.amber),
            centerTitle: true,
            elevation: 0,
            titleTextStyle: TextStyle(fontFamily: 'Helvetica', fontSize: 20)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 145, 96, 18),
            ),
            backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 217, 144, 27),
            ),
            foregroundColor: MaterialStateProperty.all(const Color(0xFFFFFFFF)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
      ),
      themeMode: ThemeMode.system,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('de'), // Deutsch
      ],
      home: const LoginPage(),
    );
  }
}
