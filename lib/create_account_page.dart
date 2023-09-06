import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'create_account_password.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(25, 0, 25, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Create Account",
                    style: GoogleFonts.ubuntu(
                      fontSize: 25,
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 203, 203, 203),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 4),
              margin: const EdgeInsets.fromLTRB(25, 0, 25, 10),
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 52, 52, 52),
                  border: Border.all(),
                  borderRadius: const BorderRadius.all(Radius.circular(5))),
              child: TextFormField(
                style: GoogleFonts.getFont("Ubuntu"),
                autovalidateMode: AutovalidateMode.always,
                validator: validateEmail,
                obscureText: false,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Email address",
                  hintStyle: GoogleFonts.getFont("Ubuntu"),
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              margin: const EdgeInsets.fromLTRB(25, 5, 25, 20),
              height: 60,
              width: 100,
              child: ElevatedButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 145, 96, 18),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 217, 144, 27),
                  ),
                  foregroundColor:
                      MaterialStateProperty.all(const Color(0xFFFFFFFF)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateAccountPassword()),
                  );
                },
                child: const Icon(
                  Icons.navigate_next_rounded,
                  size: 35.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid email address'
        : null;
  }
}
