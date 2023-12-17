import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String blogText = 'Welcome to my blog';

  void canadaBlog() {
    setState(() {
      blogText = 'About Canada';
    });
  }
  void pakiBlog() {
    setState(() {
      blogText = 'About Pakistan';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blog Structure App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              blogText,
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: canadaBlog,
              child: Text("CANADA"),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
            ElevatedButton(
              onPressed: pakiBlog,
              child: Text("Pakistan"),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),

          ],
        ),
      ),
    );
  }
}
