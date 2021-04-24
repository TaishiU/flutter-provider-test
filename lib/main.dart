import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String text = 'Provider';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('プロバイダー'),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 250),
              Text(
                text,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              RaisedButton(
                child: Text('change'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
