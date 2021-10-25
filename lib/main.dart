import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expanded And SizeBox',
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            flex: 1,
            child: Container(
                color: Colors.red,
                padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                child: const Text(
                  'Item1 : flex1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ))),
        const SizedBox(
          height: 20,
        ),
        Expanded(
            child: Container(
                color: Colors.green,
                padding: const EdgeInsets.all(15),
                child: const Text(
                  'Item2 : flex2',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
            flex: 2),
        const SizedBox(height: 20),
        Expanded(
            child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(15),
                child: const Text(
                  'Item3 : flex3',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
            flex: 3),
      ],
    );
  }
}
