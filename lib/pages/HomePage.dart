import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

final audioPlayer = AudioPlayer();
bool isPlaying = false;
Duration duration = Duration.zero;
Duration position = Duration.zero;

@override
void initState(){
  super.initState();

  setAudio();
  audioPlayer.onPlayerStateChanged.listen((state) {
    setState(() {
      isPlaying = state == PlayerState.playing;
    });
  });
  audioPlayer.onDurationChanged.listen((newDuration) {
    setState(() {
      duration = newDuration;
    });
  });
  audioPlayer.onPositionChanged.listen((newPosition) {
    setState(() {
      duration = newPosition;
    });
  });
}

Future setAudio() async{

}

@override
void dispose(){
  audioPlayer.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightBlueAccent, Colors.white70],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  "Bem-vindo de volta, Sr. Santos!",
                  style: TextStyle(
                    fontFamily: 'Waiting',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),

              ],
            ),
          ),
          Positioned(
            top: 280,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(
                      image: AssetImage('lib/assets/image/PrimeiroContainer.jpg')
                    )
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "IMAGENS CALMAS DIA-A-DIA",
                      style: TextStyle(
                        fontFamily: 'Waiting',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  // Seu primeiro container
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(
                          image: AssetImage('lib/assets/image/SegundoContainer.jpg')
                      )
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "PALAVRAS QUE ELEVAM SUA MENTE",
                      style: TextStyle(
                        fontFamily: 'Waiting',
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  // Seu segundo container
                ),
                SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(gradient:  LinearGradient(
                      colors: [Colors.lightBlueAccent, Colors.white70],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,),
                  borderRadius: BorderRadius.circular(16)),
                  width: double.infinity,
                  height: 200,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'The flutter song'
                        ),
                        SizedBox(height: 4),
                        const Text(
                            'Sarah Abs'
                        ),
                        Slider(
                          activeColor: Colors.lightBlueAccent,
                          min: 0,
                          max: duration.inSeconds.toDouble(),
                          value: position.inSeconds.toDouble(),
                          onChanged: (value) async {
                            final position = Duration(seconds: value.toInt());
                            await audioPlayer.seek(position);

                            await audioPlayer.resume();
                          },
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('00:00'),
                              Text('04:33'),

                              //Text(formatTime(position)),
                              //Text(formatTime(duration - position)),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.lightBlueAccent,
                          child: IconButton(
                            icon: Icon(
                              isPlaying ? Icons.pause : Icons.play_arrow
                            ),
                            iconSize: 50,
                            color: Colors.white,
                            onPressed: () async {
                              if(isPlaying){
                                await audioPlayer.pause();
                              }else{
                                String url =
                                'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3';
                                await audioPlayer.play(url as Source);
                              }
                            },
                          ),
                        )
                      ],
                    ),
                  ),

                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
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
                    icon: Icon(Icons.favorite),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         _makePhoneCall('79988213744');
        },
        child: Icon(Icons.warning_sharp),
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );


  }
}

Future<void> _makePhoneCall(String phoneNumber) async {
  final Uri launchUri = Uri(
    scheme: 'tel',
    path: phoneNumber,
  );
  await launchUrl(launchUri);
}

