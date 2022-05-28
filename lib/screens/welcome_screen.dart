import 'package:flutter/material.dart';
import 'package:back_to_monke/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ipfs/flutter_ipfs.dart';
import 'home_screen.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';


class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 100.0),
            const Text(
              'Powerful for\ndevelopers.\nFast for\neveryone.',
              style: kTextStyle_W900_S40,
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton.extended(
                  onPressed: () => Navigator.pushNamed(context, HomeScreen.id),
                  label: Text('START BUILDING'),
                  backgroundColor: Colors.greenAccent,
                  foregroundColor: Colors.black,
                ),
                const SizedBox(width: 15.0),
                Container(),
                FloatingActionButton.extended(
                  onPressed: null,
                  label: Text('READ DOCUMENTATION'),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    side: BorderSide(color: Colors.white, width: 1.0),
                  ),
                  backgroundColor: Colors.white.withOpacity(0.0),
                  foregroundColor: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


