import 'package:flutter/material.dart';
import 'package:flutter_img/flutter_img.dart';
import 'package:rive/rive.dart';
import 'package:flutter_application_1/features/welcome/widgets/widgets.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  // ignore: non_constant_identifier_names
  void StartedSheet(BuildContext context) {
    showModalBottomSheet(
        useSafeArea: true,
        context: context,
        isScrollControlled: true,
        isDismissible: true,
        enableDrag: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(55))),
        backgroundColor: Colors.redAccent,
        builder: (context) => const SingleChildScrollView(
              child: RegisterSheet(),
            ));
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          right: false,
          left: false,
          top: false,
          child: Stack(
            children: [
              const Positioned.fill(
                child:
                    RiveAnimation.asset('assets/ani/riv/start_animation.riv'),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 200),
                child: Img('assets/img/png/logo.png'),
              ),
              const SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.only(top: 550),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 300,
                        height: 60,
                        child: WelcomeButton(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                          onPressed: () => StartedSheet(context),
                          text: "Get started",
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 25),
                      SizedBox(
                        width: 300,
                        height: 60,
                        child: WelcomeButton(
                          borderSide: BorderSide(color: Colors.black, width: 2),
                          onPressed: () {
                            null;
                          },
                          text: "Guest",
                          backgroundColor: Colors.redAccent,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
