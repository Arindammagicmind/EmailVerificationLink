import 'package:flutter/material.dart';
import 'package:redirectscreen/emailVerifyScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/token': (context) => const EmailVerificationScreen(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: Navbar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to the Home Page!'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/token');
              },
              child: Text('Go to About Page'),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: Footer(),
    );
  }
}
