import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: 430,
              height: 266,
              padding: EdgeInsets.only(
                  left: 0,
                  top: 0,
                  bottom: 120),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightBlueAccent, Colors.white70],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 40.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_back),
                              ),
                            ],
                        ),
                    ),
                    const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "HELLP",
                            style: TextStyle(
                                fontFamily: 'Waiting',
                                fontSize: 50,
                                decoration: TextDecoration.none,
                                color: Colors.black),
                          ),
                          Text(
                            "Transformando Vidas...",
                            style: TextStyle(
                                fontFamily: 'Waiting',
                                fontSize: 20,
                                decoration: TextDecoration.none,
                                color: Colors.black),
                          ),
                          Text(
                            "Resgatando Esperanças.",
                            style: TextStyle(
                                fontFamily: 'Waiting',
                                fontSize: 20,
                                decoration: TextDecoration.none,
                                color: Colors.black),
                          ),
                        ]
                    )
                  ],
                ),
              ),
              ),

            ),
          Positioned(
            top: 200,
            left: 10,
            right: 10,
            child: Container(
              width: 380,
              height: 650,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Informações gerais',
                      style: TextStyle(
                        fontFamily: 'Waiting',
                        fontSize: 28
                      ),),
                      SizedBox(height:
                        10,),
                      TextFormField(
                        decoration:
                        InputDecoration(
                            labelText: 'Nome',
                          labelStyle: TextStyle(
                              fontFamily: 'Waiting',
                              fontSize: 28
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0)
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration:
                        InputDecoration(
                            labelText: 'Sobrenome',
                          labelStyle: TextStyle(
                              fontFamily: 'Waiting',
                              fontSize: 28
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0)
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration:
                         InputDecoration(
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              fontFamily: 'Waiting',
                              fontSize: 28
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0)
                            ),
                            filled: true,
                            fillColor: Colors.white,
                        ),

                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration:
                        InputDecoration(
                            labelText: 'Idade',
                          labelStyle: TextStyle(
                              fontFamily: 'Waiting',
                              fontSize: 28
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0)
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration:
                        InputDecoration(
                            labelText: 'Telegone',
                          labelStyle: TextStyle(
                              fontFamily: 'Waiting',
                              fontSize: 28
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0)
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration:
                        InputDecoration(labelText: 'Senha',
                          labelStyle: TextStyle(
                              fontFamily: 'Waiting',
                              fontSize: 28
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0)
                          ),
                          filled: true,
                          fillColor: Colors.white,),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, '/login');
                      },
                          child: Text(
                            "Cadastar",
                            style: TextStyle(
                              fontFamily:'Waiting',
                              fontSize: 30,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(8),
                            minimumSize: const Size(200, 48),
                            backgroundColor: Colors.lightBlueAccent,
                            shape: RoundedRectangleBorder(
                            borderRadius:  BorderRadius.circular(10.0)
                          )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
