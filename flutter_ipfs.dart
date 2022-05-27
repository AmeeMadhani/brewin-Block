// ignore_for_file: must_be_immutable

import 'dart:convert';
import 'dart:io';
import 'package:flutter_ipfs/src/constants/constants.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';



class FlutterIpfs{

  Future<String> uploadToIpfs(String uploadPath) async {
    try {
      final bytes = File(uploadPath).readAsBytesSync();
      print(bytes);

      final response = await http.post(
        Uri.parse('https://api.nft.storage/upload'),
        headers: {
          'Authorization': 'Bearer $storageKey',
          'content-type': 'image/*'
        },
        body: bytes,
      );

      // Dio dio = new Dio();
      // final response = await dio.post(
      //   'https://api.nft.storage/upload',
      //   data: {'id': 12, 'name': 'wendu'},
      //   options: Options(
      //     headers: {
      //       'Authorization': 'Bearer $storageKey',
      //       'content-type': 'image/*'
      //     },
      //   ),
      // );

      final data = jsonDecode(response.body);

      final cid = data['value']['cid'];

      debugPrint('CID OF IMAGE -> $cid');

      return cid;
    } catch (e) {
      debugPrint('Error at IPFS Service - uploadImage: $e');
      rethrow;
    }
  }
}
