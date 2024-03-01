import 'package:flutter/material.dart';

class ImageAnimationBanner extends StatelessWidget {
  const ImageAnimationBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(
          "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    );
  }
}
