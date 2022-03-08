import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NameButton extends StatelessWidget {
  final String name;

  const NameButton({required this.name});

  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      Provider.of<Names>(context, listen:false).changeFruit(name);
    }, child: Text(name));
  }
}

class Names extends ChangeNotifier {
  String name = 'unknown';

  void changeFruit(String newName) {
    name = newName;
    notifyListeners();
  }
}