import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({Key? key, required this.isSelected}) : super(key: key);

  final List<bool> isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 3.0,
            color: isSelected[0] ? Colors.black87 : Colors.black12,
          ),
        ),
        const SizedBox(width: 4.0),
        Expanded(
          child: Container(
            height: 3.0,
            color: isSelected[1] ? Colors.black87 : Colors.black12,
          ),
        ),
        const SizedBox(width: 4.0),
        Expanded(
          child: Container(
            height: 3.0,
            color: isSelected[2] ? Colors.black87 : Colors.black12,
          ),
        ),
      ],
    );
  }
}
