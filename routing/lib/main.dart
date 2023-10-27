import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Act-T-Connect'),
      routes: {
        'first-pg': (context) => const FirstPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == 'second-pg') {
          return MaterialPageRoute(builder: (context) => const SecondPage());
        } else {
          return MaterialPageRoute(builder: (context) => const FirstPage());
        }
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text("First Page"),
              onPressed: () {
                Navigator.pushNamed(context, 'first-pg');
              },
            ),
            ElevatedButton(
              child: const Text("Second Page"),
              onPressed: () {
                Navigator.pushNamed(context, 'second-pg');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      body: Center(
        child: Container(
          child: const Text(
            "First Page ",
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: Container(
          child: const Text(
            "Second Page ",
            style: TextStyle(fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
