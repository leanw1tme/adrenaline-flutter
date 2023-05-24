import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import '../widgets/widgets.dart';
import 'remember_me.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
                iconColor: Colors.white,
                hintText: '(+7)',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2)),
                enabledBorder:
                    OutlineInputBorder(borderSide: BorderSide(width: 2))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
          child: TextFormField(
            cursorColor: Colors.white,
            style: const TextStyle(fontSize: 20),
            obscureText: true,
            decoration: const InputDecoration(
              hintText: 'Password',
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2)),
              enabledBorder:
                  OutlineInputBorder(borderSide: BorderSide(width: 2)),
              focusColor: Colors.white,
              prefixIcon: Icon(
                Icons.lock,
              ),
              prefixIconColor: Colors.black87,
              suffixIcon: Icon(
                Icons.remove_red_eye,
                size: 35,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const RememberMe(),
              const SizedBox(width: 30),
              TextButton(
                  onPressed: null,
                  child: Text(
                    'Forgot Password?',
                    style: Theme.of(context).textTheme.headlineSmall,
                  )),
              const SizedBox(width: 8)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
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
              child: const Text('Login',
                  style: TextStyle(color: Colors.black, fontSize: 19))),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You don't have an account?",
              style: Theme.of(context).textTheme.labelSmall,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  ShowRegister();
                },
                child: Text(
                  'Create',
                  style: Theme.of(context).textTheme.labelMedium,
                ))
          ],
        )
      ],
    ));
  }

  // ignore: non_constant_identifier_names
  Future ShowRegister() => showSlidingBottomSheet(context,
      builder: (context) => const SlidingSheetDialog(
            padding: EdgeInsets.all(25),
            shadowColor: Colors.black26,
            avoidStatusBar: true,
            snapSpec: SnapSpec(snappings: [0.75, 0.95]),
            builder: RegisterSheet,
            color: Colors.redAccent,
            cornerRadius: 35,
            duration: Duration(milliseconds: 700),
          ));
}
