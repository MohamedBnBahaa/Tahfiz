import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key, required this.changeIndex}) : super(key: key);

  final Function changeIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(8.0),
            ),
            onPressed: (){
              changeIndex("right");
            },
            child: const Icon(
              Icons.arrow_left,
              size: 96.0,
            ),
          ),
          const SizedBox(width: 64.0,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(8.0),
            ),
            onPressed: (){
              changeIndex("left");
            },
            child: const Icon(
              Icons.arrow_right,
              size: 96.0,
            ),
          ),
        ],
      ),
    );
  }
}
