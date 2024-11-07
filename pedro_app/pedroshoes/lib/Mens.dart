import 'package:flutter/material.dart';

class MensView extends StatefulWidget {
  const MensView({super.key});

  @override
  State<MensView> createState() => _MensViewState();
}

class _MensViewState extends State<MensView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          Text(
            'Mens Trending Collectio Right Here',
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Arial',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
