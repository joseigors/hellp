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
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightBlueAccent, Colors.white70],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(onPressed: (){}
                        , icon: Icon(Icons.arrow_circle_left)),
                  )
                ],
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            child: Container(
              width: 430,
              height: 266,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.lightBlueAccent, Colors.white70],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 10,
            right: 10,
            child: Container(
              width: 380,
              height: 700,
              decoration: BoxDecoration(
                color: Colors.white60,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

              ),
            ),
          ),
        ],
      ),
    );
  }
}
