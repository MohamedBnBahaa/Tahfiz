import 'package:flutter/material.dart';

class TahfizTitle extends StatelessWidget {
  const TahfizTitle({Key? key, required this.tahfizTitle}) : super(key: key);

  final String tahfizTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Text(
            tahfizTitle,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: "Alexandria",
              fontSize: 36.0,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
