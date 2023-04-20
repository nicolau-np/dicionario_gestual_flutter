import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Dicionário Gestual',
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
