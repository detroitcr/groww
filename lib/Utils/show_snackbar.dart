import 'package:flutter/material.dart';

/// showSnackBar method
void showSnackBar(BuildContext context,String text){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}