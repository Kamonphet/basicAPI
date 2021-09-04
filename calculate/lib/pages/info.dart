import 'dart:convert';
import 'dart:ui';
import 'package:calculate/pages/detail.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:async';

class InfoPage extends StatefulWidget {
  //const InfoPage({ Key? key }) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(20),
            child: FutureBuilder(
              builder: (context, AsyncSnapshot snapshot) {
                //var data = json.decode(snapshot.data.toString()); //format data [{},{},{}]
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return myBox(snapshot.data[index]['title'],snapshot.data[index]['description'],snapshot.data[index]['pab'],snapshot.data[index]['detail']);
                  },
                  itemCount: snapshot.data.length,); //แยกข้อมูล
              },
              //future = funtion ที่เอาไว้loadไฟล์มาทำงานได้แบบ asynchonus
              //future: DefaultAssetBundle.of(context).loadString('assets/data.json'), //โหลดไฟล์json มาวางในฟังชันก์ future
              future: getData(),
            )));
  }

  Widget myBox(String title, String description, String pab, String detail) {
    var v1, v2, v3, v4;
    v1 = title;
    v2 = description;
    v3 = pab;
    v4 = detail;

    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 180,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(pab),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.25), BlendMode.screen)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.3),
            offset: Offset(3, 3),
            blurRadius: 3,
            spreadRadius: 0,
          )
        ],
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            description,
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 40,
          ),
          TextButton(
              onPressed: () {
                print('Next Page >>>');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(v1, v2, v3, v4)));
              },
              child: Text('more...'))
        ],
      ),
    );
  }

  Future getData() async {
    //https://raw.githubusercontent.com/Kamonphet/basicFlutter/main/data.json ลิงค์ data.json ที่อยู่ใน github
    var url = Uri.https('raw.githubusercontent.com', '/Kamonphet/basicFlutter/main/data.json');
    var response = await http.get(url);
    var result = json.decode(response.body);
    return result;
  }
}