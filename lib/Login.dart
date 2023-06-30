import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300,
              margin: const EdgeInsets.all(10.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username/Email',
                ),
              ),
            ),
            Container(
              width: 300,
              margin: const EdgeInsets.all(20.0),
              child:             const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Text('Login'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/second');
                  },
                  child: const Text('Clear'),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
