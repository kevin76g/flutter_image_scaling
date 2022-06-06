import 'package:flutter/material.dart';

class FullScreenImage extends StatefulWidget {
  const FullScreenImage({required this.image, Key? key}) : super(key: key);

  final Image image;

  @override
  State<FullScreenImage> createState() => _FullScreenImageState();
}

class _FullScreenImageState extends State<FullScreenImage> {
  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      minScale: 0.8,
      maxScale: 2.5,
      child: GestureDetector(
        child: Container(color: Colors.white, child: widget.image),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
