import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartedForm extends StatefulWidget {
  const StartedForm({
    super.key,
  });

  @override
  State<StartedForm> createState() => _StartedFormState();
}

class _StartedFormState extends State<StartedForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.white,
      style: const TextStyle(fontSize: 20),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.phone),
          prefixIconColor: Colors.black87,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2)),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 2))),
    );
  }
}
