import 'package:flutter/material.dart';

@override
Widget build(BuildContext context) {
  final mediaQuery = MediaQuery.of(context);
  return Padding(padding: EdgeInsets.only(top: mediaQuery.padding.top));
}
