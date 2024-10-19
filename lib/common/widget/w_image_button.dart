import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  const ImageButton(this.path, this.onTap, {super.key, this.size = 25});

  final String path;
  final VoidCallback onTap;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Image.asset(path , width: size,));
  }
}
