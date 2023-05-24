import 'package:flutter/material.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({
    super.key,
  });

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
            value: isChecked,
            checkColor: Colors.redAccent,
            activeColor: Colors.white,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            }),
        Text('Remember me', style: Theme.of(context).textTheme.headlineSmall)
      ],
    );
  }
}
