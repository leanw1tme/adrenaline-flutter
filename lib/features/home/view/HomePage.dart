import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Home Page', style: TextStyle(fontSize: 15)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello, Composure!'),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/start');
              },
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                    const BorderSide(color: Colors.red, width: 1.0)),
              ),
              child: const Text('Перенаправление Start'),
            ),
          ],
        ),
      ),
    );
  }
}
