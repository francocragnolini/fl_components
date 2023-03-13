import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Avatars")),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage:
              NetworkImage("https://i.blogs.es/85aa44/stan-lee/1366_2000.jpg"),
        ),
      ),
    );
  }
}

//! CircleAvatar no permite utilzar el fadeInImage widget para utilizar un placeholder
//! hasta que la imagen sea utilizada