import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/welcome/classes/classes.dart';

Widget RegisterSheet(context, state) => Material(
      child: Container(
        height: 570,
        width: 800,
        color: Colors.redAccent,
        child: Stack(
          children: [
            Text('Welcome!', style: Theme.of(context).textTheme.titleMedium),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text('Create Account',
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            const RegisterForm(),
            Positioned(
              left: 287,
              top: 10,
              right: 0,
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        const BorderSide(color: Colors.white, width: 3)),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    fixedSize: const MaterialStatePropertyAll(Size(25, 55)),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                  child: const Icon(Icons.close)),
            )
          ],
        ),
      ),
    );
