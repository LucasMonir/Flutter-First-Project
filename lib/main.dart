import 'package:flutter/material.dart';

main() {
  runApp(const AppWidget(
    title: 'Titulo',
  ));
}

class AppWidget extends StatelessWidget {
  final String? title;

  const AppWidget({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Text('counter: $counter'),
        onTap: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
