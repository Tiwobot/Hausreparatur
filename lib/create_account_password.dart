import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountPassword extends StatefulWidget {
  const CreateAccountPassword({Key? key}) : super(key: key);

  @override
  State<CreateAccountPassword> createState() => _CreateAccountPasswordState();
}

class _CreateAccountPasswordState extends State<CreateAccountPassword> {
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
                    "Set a Password",
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
                borderRadius: const BorderRadius.all(Radius.circular(5)),
              ),
              child: TextField(
                style: GoogleFonts.getFont("Ubuntu"),
                obscureText: true,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "Password",
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
                  // TODO: Implement create account logic
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
}
