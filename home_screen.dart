import 'package:flutter/material.dart';
import 'package:back_to_monke/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ipfs/flutter_ipfs.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Container(
            //   padding: EdgeInsets.all(100.0),
            //   child: const Text(
            //     'Powerful for\ndevelopers.\nFast for\neveryone.',
            //     style: kTextStyle,
            //   ),
            // ),
            CupertinoButton(
              padding: EdgeInsets.zero,
              color: Colors.red,
              onPressed: () => ImagePickerService.pickImage(context),
              child: Text(
                'click here',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
