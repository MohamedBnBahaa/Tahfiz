import 'package:flutter/material.dart';
import 'package:tahfiz/tahfiz_data.dart';
import 'package:tahfiz/widgets/buttons.dart';
import 'package:tahfiz/widgets/title.dart';

class Tahfiz extends StatefulWidget {
  const Tahfiz({Key? key}) : super(key: key);

  @override
  State<Tahfiz> createState() => _TahfizState();
}

class _TahfizState extends State<Tahfiz> {

  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.orangeAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TahfizTitle(
                tahfizTitle: tahfizData[myIndex]["quote"],
              ),
              Buttons(
                changeIndex: changeIndex,
              ),
            ],
          ),
        ),
      ),
    );
  }

  changeIndex(String direction) {
    if (direction == "right") {
      setState(() {
        if (myIndex == tahfizData.length - 1) {
          myIndex = 0;
        } else {
          myIndex++;
        }
      });
    } else if (direction == "left") {
      setState(() {
        if (myIndex == 0) {
          myIndex = tahfizData.length - 1;
        } else {
          myIndex--;
        }
      });
    }
  }

}