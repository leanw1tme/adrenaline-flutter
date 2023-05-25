import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

import 'welcome_button.dart';

class RegisterSheet extends StatefulWidget {
  const RegisterSheet({super.key});

  @override
  State<RegisterSheet> createState() => _RegisterSheetState();
}

class _RegisterSheetState extends State<RegisterSheet> {
  final TextEditingController phoneController = TextEditingController();
  Country selectedCountry = Country(
      phoneCode: "(+7)",
      countryCode: "KZ",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "Kazakhstan",
      example: "Kazakhstan",
      displayName: "Kazakhstan",
      displayNameNoCountryCode: "KZ",
      e164Key: "");
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    phoneController.selection = TextSelection.fromPosition(
        TextPosition(offset: phoneController.text.length));
    return SafeArea(
      top: false,
      right: false,
      left: false,
      bottom: true,
      child: Container(
        padding: EdgeInsets.only(bottom: mediaQuery.viewInsets.bottom),
        height: 570,
        margin: EdgeInsets.all(25),
        color: Colors.redAccent,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 140),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 110, top: 10),
                    child: Text('Welcome!',
                        style: Theme.of(context).textTheme.titleMedium),
                  ),
                  const SizedBox(height: 5),
                  Text('Get Started',
                      style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: phoneController,
              onChanged: (value) {
                setState(() {
                  phoneController.text = value;
                });
              },
              cursorColor: Colors.white,
              style: const TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  hintText: "Enter phone number",
                  hintStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold),
                  focusedBorder: phoneController.text.length > 9
                      ? const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.greenAccent, width: 2))
                      : null,
                  enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2)),
                  prefixIcon: Container(
                    padding:
                        const EdgeInsets.only(top: 10.0, left: 5, right: 10),
                    child: InkWell(
                      onTap: () {
                        showCountryPicker(
                            context: context,
                            countryListTheme: const CountryListThemeData(
                                bottomSheetHeight: 400),
                            onSelect: (value) {
                              setState() {
                                selectedCountry = value;
                              }
                            });
                      },
                      child: Text(
                        textAlign: TextAlign.justify,
                        "${selectedCountry.countryCode}" +
                            " " +
                            "${selectedCountry.phoneCode}",
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
              child: SizedBox(
                width: 500,
                height: 60,
                child: WelcomeButton(
                    borderSide: BorderSide.none,
                    onPressed: () => null,
                    text: "Login",
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
