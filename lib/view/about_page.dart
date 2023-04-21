import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(
              'assets/images/img_gestos.png',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            'Dango Gestos',
          )
        ],
      ),
    );
  }
}
