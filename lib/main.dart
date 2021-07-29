import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFE1F5FE)),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

Widget build(BuildContext context) {
  return Image(image: AssetImage('web/icons/11.jpg'));
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // Column(
          // children: <Widget>[
          //   Padding(

          //     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          //     child: Image.asset('web/icons/11.jpg'),
          //   ),
          Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: LikeButton(
              size: 50,
              circleColor:
                  CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
              bubblesColor: BubblesColor(
                dotPrimaryColor: Colors.red,
                dotSecondaryColor: Color(0xff0099cc),
              ),
              likeBuilder: (bool isLiked) {
                return Icon(
                  Icons.favorite,
                  size: 35,
                  color: isLiked ? Colors.redAccent : Colors.grey,
                );
              },
              likeCount: 59,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Center(
            child: LikeButton(
              size: 50,
              circleColor:
                  CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
              bubblesColor: BubblesColor(
                dotPrimaryColor: Color(0xff33b5e5),
                dotSecondaryColor: Color(0xff0099cc),
              ),
              likeBuilder: (bool isLiked) {
                return Icon(
                  Icons.home,
                  size: 35,
                  color: isLiked ? Colors.deepPurpleAccent : Colors.grey,
                );
              },
              likeCount: 89,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Center(
            child: LikeButton(
              size: 50,
              circleColor:
                  CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
              bubblesColor: BubblesColor(
                dotPrimaryColor: Colors.greenAccent,
                dotSecondaryColor: Color(0xff0099cc),
              ),
              likeBuilder: (bool isLiked) {
                return Icon(
                  Icons.audiotrack,
                  size: 35,
                  color: isLiked ? Colors.green : Colors.grey,
                );
              },
              likeCount: 44,
            ),
          ),
        ],
      ),
      //   ],
      // )
    );
  }
}
