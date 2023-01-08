import 'package:flutter/material.dart';

class ProfilePictureWidget extends StatelessWidget {
  final String imageUrl;
  const ProfilePictureWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      width: 200,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            offset: Offset(0.0, 3.0),
          )
        ],
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(
            imageUrl,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
