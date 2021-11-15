import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyContainer(),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: RotationTransition(
            turns: const AlwaysStoppedAnimation(10 / 360),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text('Hello World',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.white)),
            )));
  }
}
