import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('hello1', textDirection: TextDirection.ltr),
    );
  }
}