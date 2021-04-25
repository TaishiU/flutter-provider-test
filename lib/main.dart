import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:third/mainModel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<mainModel>(
        create: (_) => mainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Provider'),
          ),
          body: Consumer<mainModel>(builder: (_, model, child) {
            return Center(
              child: Column(
                children: [
                  const SizedBox(height: 250),
                  Text(
                    model.text,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  RaisedButton(
                    child: Text('change'),
                    onPressed: () {
                      model.changeText();
                    },
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
