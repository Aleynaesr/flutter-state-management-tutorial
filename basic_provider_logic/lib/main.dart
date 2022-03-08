import 'package:basic_provider_logic/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp(
    ChangeNotifierProvider(
      create: (_) => Names(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Provider Package Usage',
        home: Scaffold(
            appBar: AppBar(
              title:  Text('My name is '+ Provider.of<Names>(context).name),
            ),
            body: Center(
              child: Column(
                children: const [
                  NameButton(name: 'Aleyna'),
                  NameButton(name: 'Banu'),
                  NameButton(name: 'Melek'),
                ],
              ),
            )));
  }
}


