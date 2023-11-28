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
      body: SingleChildScrollView(
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
                          width: 80,
                          height: 80,
                          color: Colors.lightBlueAccent, // Cor do primeiro container
                          // Adicione os widgets ou conteúdo desejado dentro deste Container
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          color: Colors.lightBlueAccent, // Cor do segundo container
                          // Adicione os widgets ou conteúdo desejado dentro deste Container
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          color: Colors.lightBlueAccent, // Cor do terceiro container
                          // Adicione os widgets ou conteúdo desejado dentro deste Container
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
