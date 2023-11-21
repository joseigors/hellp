import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:932 ,
      width: 430,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('lib/assets/image/FUNDO.jpg'),
          fit: BoxFit.cover
        )
),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 450,
            ),
          Text(
          "HELLP",
          style: TextStyle(
              fontFamily: 'Waiting',
              fontSize: 50,
            decoration: TextDecoration.none,
            color: Colors.black
          ),
        ),
            Text(
              "Transformando Vidas...",
              style: TextStyle(
                  fontFamily: 'Waiting',
                  fontSize: 20,
                  decoration: TextDecoration.none,
                  color: Colors.black
              ),
            ),
            Text(
              "Resgatando Esperanças.",
              style: TextStyle(
                  fontFamily: 'Waiting',
                  fontSize: 20,
                  decoration: TextDecoration.none,
                  color: Colors.black
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/cadastro');
            },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(8),
                minimumSize: const Size(20, 20),
                backgroundColor: Colors.lightBlueAccent, // Cor de fundo do botão
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            child: const Text('COMECE AGORA UMA \nMUDANÇA '
                'EM SUA VIDA',
              textAlign: TextAlign.center,
              style:  TextStyle(
                fontFamily: 'Waiting',
                fontSize: 18,
                decoration: TextDecoration.none,
              ),
            ),
            ),
            Text(
              "OU",
              style: TextStyle(
                  fontFamily: 'Waiting',
                  fontSize: 20,
                  decoration: TextDecoration.none,
                  color: Colors.black
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/login');
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(8),
                minimumSize: const Size(20, 20),
                backgroundColor: Colors.lightBlueAccent, // Cor de fundo do botão
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('JÁ FAZ PARTE? \nFAÇA SEU LOGIN!',
                textAlign: TextAlign.center,
                style:  TextStyle(
                  fontFamily: 'Waiting',
                  fontSize: 18,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
