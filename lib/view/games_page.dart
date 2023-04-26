import 'package:dic_project/view/game/game1.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jogos'),
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://scontent.flad4-1.fna.fbcdn.net/v/t39.30808-6/343403445_3419019341676270_2471787823684247912_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeH1UzcjDc_QBb73DFiiYb_q93YWlW3n6pf3dhaVbefqlxduY_OXccj_8MGwTqdB7wrQrHKAoQWQMGq8uTQOChM5&_nc_ohc=UBbgzixG9ZQAX-f6i2G&_nc_zt=23&_nc_ht=scontent.flad4-1.fna&oh=00_AfAoLUWlSYpGLv6uLW3SpanHHmhCa4vsXNtVCas3inUNiQ&oe=644CE797',
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  const Text(
                    'Verdadeiro ou Falso',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: ElevatedButton(
                      child: const Text('Jogar'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GameOne(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
