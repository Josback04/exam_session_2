import 'package:exam_session_2/screens/list_product.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: Scaffold(
        //   body: Center(
        //     child: Text('Hello World!'),
        //   ),
        // ),

        title: 'Examen Session',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: ProductListScreen());
  }
}
