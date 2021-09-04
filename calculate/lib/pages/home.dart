import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  //const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [homie()],
        ),
      ),
    );
  }

  Widget homie() {
    return Container(
      height: 500,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2016/04/12/18/56/school-1325091_960_720.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.25), BlendMode.screen)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Hello, Phet',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Text(
              'Kamonphet Sirirattanasakkul',
              style: TextStyle(fontSize: 25, color: Colors.white30),
            )
          ]),
    );
  }
}
