import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.lightBlueAccent, Colors.white70],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 28.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(
                                  context); // Adicione a lógica para voltar à tela anterior
                            },
                            icon: Icon(Icons.arrow_back),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.lightBlueAccent,
                          radius: 60,
                          child: IconButton(
                            icon: Icon(Icons.person),
                            iconSize: 50,
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ),
                        Text(
                          "Bem-vindo ao seu perfil!",
                          style: TextStyle(
                              fontFamily: 'Waiting',
                              fontSize: 20,
                              decoration: TextDecoration.none,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                color: Colors.transparent,
                                child: Column(
                                  children: [
                                    Text(
                                      'IMC:',
                                      style: TextStyle(fontSize: 36, fontFamily: 'Waiting'),
                                    ),

                                    Text(
                                      '26,6',
                                      style: TextStyle(fontSize: 24, fontFamily: 'Waiting'),
                                    ),
                                  ],
                                ),// Cor do segundo container
                                // Adicione os widgets ou conteúdo desejado dentro deste Container
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      width: double.infinity,
                      decoration: BoxDecoration(
                       color: Colors.white,
                        borderRadius: BorderRadius.circular(36)
                        ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nome: José Igor',
                              style: TextStyle(fontSize: 36, fontFamily: 'Waiting'),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Sobrenome: Santos Oliveira',
                              style: TextStyle(fontSize: 36, fontFamily: 'Waiting'),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Email: seuemail@example.com',
                              style: TextStyle(fontSize: 36, fontFamily: 'Waiting'),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Idade: 29',
                              style: TextStyle(fontSize: 36, fontFamily: 'Waiting'),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Telefone: (123) 456-7890',
                              style: TextStyle(fontSize: 36, fontFamily: 'Waiting'),
                            ),
                            SizedBox(height: 12),
                            Align(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/login');
                                },
                                child: Text(
                                  "Atualizar",
                                  style: TextStyle(
                                    fontFamily: 'Waiting',
                                    fontSize: 30,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(8),
                                  minimumSize: const Size(150, 48),
                                  backgroundColor: Colors.lightBlueAccent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ),

                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.calendar_today),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/perfil');
                  },
                  icon: Icon(Icons.person),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/player');
                  },
                  icon: Icon(Icons.play_arrow),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
