import 'dart:developer';

import 'package:code_generator/model/address_model.dart';
import 'package:code_generator/model/user_model.dart';
import 'package:flutter/material.dart';

void main() {
  AddressModel addressModel = AddressModel(
    fullAddress: 'Kashipur, UK, India',
    city: 'Kashipur',
    lat: 0.899868687,
    lng: 0.76876768,
  );

  UserModel userModel = UserModel('Vinay Sharma', '', addressModel);
  log(userModel.toJson().toString());

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
