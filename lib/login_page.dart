import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hausreparatur/create_account_page.dart';
import 'package:hausreparatur/forgot_pass_email.dart';
import 'options_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  bool _obscureColor = true;
  String iconAssetLocation = "";
  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.light) {
      iconAssetLocation = 'assets/images/icon_v3_transparent_dark.png';
    } else {
      iconAssetLocation = 'assets/images/icon_v3_transparent.png';
    }
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              iconAssetLocation,
              filterQuality: FilterQuality.medium,
              height: 50,
              width: 50,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 0, 25, 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Haus",
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 30,
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                  const Text(
                    "reparatur",
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 30,
                      color: Color(0xFFF9A720),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 3, 15, 3),
              margin: const EdgeInsets.fromLTRB(25, 0, 25, 10),
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark,
                  border: Border.all(),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: TextField(
                style: GoogleFonts.getFont("Ubuntu"),
                obscureText: false,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Email address or phone number",
                  hintStyle: GoogleFonts.getFont("Ubuntu"),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 3, 3, 3),
              margin: const EdgeInsets.fromLTRB(25, 5, 25, 10),
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark,
                  border: Border.all(),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: TextFormField(
                obscureText: _obscureText,
                style: GoogleFonts.getFont("Ubuntu"),
                autocorrect: false,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Password",
                  hintStyle: GoogleFonts.getFont("Ubuntu"),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    color: Color(_obscureColor ? (0xFFa1a1a1) : (0xFFF9A720)),
                    icon: Icon(_obscureText
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_rounded),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                        _obscureColor = !_obscureColor;
                      });
                    },
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 5, 25, 10),
              height: 50,
              width: 370,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child:
                    const Text('Login', style: TextStyle(fontFamily: 'Ubuntu')),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forgot your password?',
                  style: GoogleFonts.ubuntu(
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 145, 145, 145),
                    ),
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(7),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPasswordEmail()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Text(
                      'Get Help',
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          color: Theme.of(context).primaryColorLight,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 80,
        color: Colors.transparent,
        elevation: 0,
        child: InkWell(
          highlightColor: const Color.fromARGB(0, 0, 0, 0),
          splashColor: const Color.fromARGB(0, 0, 0, 0),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const CreateAccountPage()),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Divider(color: Color.fromARGB(255, 116, 116, 116)),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 3, 0, 0),
                child: Text(
                  'Create an account',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
