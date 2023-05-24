import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import '../widgets/widgets.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    super.key,
  });

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 90, left: 15, right: 15),
          child: TextFormField(
            cursorColor: Colors.white,
            style: const TextStyle(fontSize: 20),
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone),
                prefixIconColor: Colors.black87,
                hintText: '(+7)',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2)),
                enabledBorder:
                    OutlineInputBorder(borderSide: BorderSide(width: 2))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
          child: TextFormField(
            cursorColor: Colors.white,
            style: const TextStyle(fontSize: 20),
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.text_fields),
                prefixIconColor: Colors.black87,
                hintText: 'Your Name',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2)),
                enabledBorder:
                    OutlineInputBorder(borderSide: BorderSide(width: 2)),
                focusColor: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
          child: TextFormField(
            cursorColor: Colors.white,
            style: const TextStyle(fontSize: 20),
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
              ),
              prefixIconColor: Colors.black87,
              hintText: 'Password',
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2)),
              enabledBorder:
                  OutlineInputBorder(borderSide: BorderSide(width: 2)),
              focusColor: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
          child: TextFormField(
            cursorColor: Colors.white,
            style: const TextStyle(fontSize: 20),
            obscureText: true,
            decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                ),
                prefixIconColor: Colors.black87,
                hintText: 'Confirm Password',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2)),
                enabledBorder:
                    OutlineInputBorder(borderSide: BorderSide(width: 2)),
                focusColor: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
          child: FilledButton(
              onPressed: null,
              style: ButtonStyle(
                  minimumSize:
                      const MaterialStatePropertyAll(Size(double.infinity, 50)),
                  backgroundColor: const MaterialStatePropertyAll(Colors.white),
                  side: const MaterialStatePropertyAll(
                      BorderSide(color: Colors.black, width: 2)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
              child: const Text('Create Account',
                  style: TextStyle(color: Colors.black, fontSize: 19))),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have account?',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            const SizedBox(width: 0.5),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  ShowLogin();
                },
                child: Text(
                  'Login',
                  style: Theme.of(context).textTheme.labelMedium,
                ))
          ],
        )
      ],
    ));
  }

  // ignore: non_constant_identifier_names
  Future ShowLogin() => showSlidingBottomSheet(context,
      builder: (context) => const SlidingSheetDialog(
            padding: EdgeInsets.all(25),
            shadowColor: Colors.black26,
            avoidStatusBar: true,
            snapSpec: SnapSpec(snappings: [0.6, 0.7]),
            builder: LoginSheet,
            color: Colors.redAccent,
            cornerRadius: 35,
            duration: Duration(milliseconds: 700),
          ));
}
