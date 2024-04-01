import 'package:api_get/next_.dart';
import 'package:api_get/show.dart';
import 'package:flutter/material.dart';

import 'breeds.dart';
import 'getapi.dart';
import 'link.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: link(),
    );
  }
}

