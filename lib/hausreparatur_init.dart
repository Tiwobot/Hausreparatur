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
      ),
      darkTheme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,
          primaryColor: const Color(0xFFF9A720),
          scaffoldBackgroundColor: const Color(0xFF000000),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xFFF9A720),
              //iconTheme: IconThemeData(color: Colors.red),
              //actionsIconTheme: IconThemeData(color: Colors.amber),
              centerTitle: true,
              elevation: 0,
              titleTextStyle:
                  TextStyle(fontFamily: 'Helvetica', fontSize: 20))),
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
