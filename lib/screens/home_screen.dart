import 'package:flutter/material.dart';
import 'package:back_to_monke/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ipfs/flutter_ipfs.dart';
import 'package:back_to_monke/components/mint.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = TextEditingController();

  String uniName = '';
  String classOf = '';
  String course = '';
  String specialization = '';
  String studentName = '';
  String enrollmentNumber = '';

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
            SizedBox(height: 100.0),
            const Text(
              'BUILD',
              style: kTextStyle_W900_S40,
            ),
            const SizedBox(height: 30.0),
            FloatingActionButton.extended(
              onPressed: () => ImagePickerService.pickImage(context),
              label: Text('IMAGE UPLOAD'),
              backgroundColor: Colors.greenAccent,
              foregroundColor: Colors.black,
            ),
            SizedBox(height: 50.0),
            FloatingActionButton.extended(
              onPressed: () => FilePickerService.pickFile(context),
              label: const Text(
                'META UPLOAD',
              ),
              backgroundColor: Colors.greenAccent,
              foregroundColor: Colors.black,
            ),
            SizedBox(height: 50.0),
            FloatingActionButton.extended(
              onPressed: () => MintIPFS().mintFromIPFS(),
              label: const Text(
                'MINTTT',
              ),
              backgroundColor: Colors.greenAccent,
              foregroundColor: Colors.black,
            ),
            // SizedBox(height: 20.0),
            // TextField(
            //   controller: controller,
            //   onChanged: (text) {
            //     uniName = text;
            //   },
            //   decoration: InputDecoration(
            //     labelText: 'University Name',
            //     labelStyle: TextStyle(color: Colors.white),
            //     enabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(50.0),
            //       borderSide: BorderSide(color: Colors.white, width: 1.0),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(50.0),
            //       borderSide: BorderSide(color: Colors.blue, width: 1.0),
            //     ),
            //   ),
            //   textCapitalization: TextCapitalization.words,
            // ),
          ],
        ),
      ),
    );
  }
}
