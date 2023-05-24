import 'package:flutter/material.dart';
import 'package:flutter_img/flutter_img.dart';
import 'package:rive/rive.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:flutter_application_1/features/welcome/widgets/widgets.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      right: false,
      left: false,
      top: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Container(
            margin: EdgeInsets.only(top: 35),
            width: 400,
            height: 900,
            child: RiveAnimation.asset('assets/ani/riv/start_animation.riv'),
          ),
          const Positioned(top: 200, child: Img('assets/img/png/logo.png')),
          Positioned(
              bottom: 300,
              left: 55,
              right: 55,
              height: 60,
              child: FilledButton(
                  onPressed: ShowRegister,
                  style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.white),
                      side: const MaterialStatePropertyAll(
                        BorderSide(color: Colors.black, width: 2),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )),
                  child: const Text('Create Account',
                      style: TextStyle(color: Colors.black, fontSize: 19)))),
          Positioned(
              bottom: 210,
              left: 55,
              right: 55,
              height: 60,
              child: OutlinedButton(
                  onPressed: ShowLogin,
                  style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.redAccent),
                      side: const MaterialStatePropertyAll(
                        BorderSide(color: Colors.black, width: 2),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )),
                  child: const Text('Login',
                      style: TextStyle(color: Colors.white, fontSize: 19))))
        ]),
      ),
    );
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
