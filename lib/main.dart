
// import 'package:farm_connect/Login.dart';
import 'package:farm_connect/Pages/Home.dart';
import 'package:farm_connect/Pages/HomePage.dart';
import 'package:farm_connect/SignUp.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SignUp(),
  ));
}