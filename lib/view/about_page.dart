import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Image.network(
                'https://scontent.flad4-1.fna.fbcdn.net/v/t39.30808-6/342795026_788954619500529_341315797310630637_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeELi-buYzyqk7bZlr0a-CtScDjsUvLiIXJwOOxS8uIhciCzbyWE6FnholY9AotD4LJ-JediIe8UqOLro9XE5eVM&_nc_ohc=fZ0NpILe8KoAX9hmupp&_nc_zt=23&_nc_ht=scontent.flad4-1.fna&oh=00_AfAeMSkcsIOkOIzV8yYGpikdA5UanvpoQj4J92b15w5BaA&oe=64539514',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Dango Gestos V2.0',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.purple,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    Text(
                      'Desenvolvedor: Nicolau Ngala Pungue',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                     SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Github: nicolau-np',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),SizedBox(
                      height: 6,
                    ),
                    Text(
                      'LinkedIn: nicolau-np',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Ano de Criação: 2016',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Ano da última versão: 2023',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
