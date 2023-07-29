import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/icon_v3_transparent.png',
              height: 30,
              width: 30,
            ),
            const Text(
              "Hausreparatur",
              style: TextStyle(fontFamily: 'Helvetica'),
            ),
          ],
        ),
        backgroundColor: const Color(0xFFF9A720),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Halo un Wilcommen bei Hausreparatur',
              style: GoogleFonts.getFont("Ubuntu"),
            ),
          ],
        ),
      ),
    );
  }
}
