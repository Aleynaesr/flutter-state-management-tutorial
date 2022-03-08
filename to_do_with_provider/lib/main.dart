import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_with_provider/page/home.dart';
import 'package:to_do_with_provider/provider/to_do_provider.dart';
import 'package:to_do_with_provider/utils/constants.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String title = 'Todo App';

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => TodosProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        primaryColor: primary,
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: HomePage(),
    ),
  );
}