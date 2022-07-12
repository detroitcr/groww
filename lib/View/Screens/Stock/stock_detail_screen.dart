import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StockDetailScreen extends StatelessWidget {
  final String title;
  final String image;
  const StockDetailScreen({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Text(title),
            Image.asset(image)
          ],
        ),
      ),
    );
  }
}
