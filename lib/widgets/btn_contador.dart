import 'package:flutter/material.dart';

class BotonContador extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const BotonContador({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: "Poppins",
          color: Colors.white,
        ),
      ),
    );
  }
}