import 'package:flutter/material.dart';
import 'package:medical/model/model.dart';

class HosptitalLogo extends StatelessWidget {
  const HosptitalLogo({super.key, required this.hos});
  final Hospital hos;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(tag: "${hos.id}", child: Image.asset(hos.image)),
        Text(
                "Hospital Name",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
         Text(
                "${hos.title}",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(179, 0, 0, 0)),
              ),
      ],
    );
  }
}
