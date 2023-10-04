import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/colors.dart';

class Button extends StatefulWidget {
  const Button({super.key, required this.color, required this.label, required this.onPressed});

  final Color color;
  final String label;
  final VoidCallback onPressed;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(16),
          backgroundColor: widget.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6)
          )
        ),
      onPressed: widget.onPressed, // Define the function to be called when the button is pressed
      child: Text(widget.label, style: TextStyle(color: Colors.white),), // The text displayed on the button
    );
  }
}