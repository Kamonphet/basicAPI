import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  //const CalculatePage({ Key? key }) : super(key: key);

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  // ตำแหน่งสำหรับเก็บข้อมูลของค่าที่รับมา
  TextEditingController score1 = TextEditingController();
  TextEditingController score2 = TextEditingController();
  TextEditingController score3 = TextEditingController();
  TextEditingController score4 = TextEditingController();
  TextEditingController score5 = TextEditingController();
  TextEditingController score6 = TextEditingController();
  TextEditingController score7 = TextEditingController();
  double average = 7;
  TextEditingController result = TextEditingController();

  @override
  void initState() {
    // ฟังก์ชันสำหรับตั่งค่าเมื่อเปิดแอพครั้งแรก
    super.initState();

    result.text = 'Your GPA is ___';
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      //สร้างscroll
      children: [
        Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: Center(
              // เนื้อหาจะอยู่ตรงกลาง
              child: Column(
                //สร้างแถวแนวตั้ง
                children: [
                  Text(
                    ' ',
                    style: TextStyle(fontSize: 10),
                  ),
                  Image.asset(
                    'assets/A+.png',
                    width: 100,
                  ),
                  Text('Grade Calculate',
                      style: TextStyle(fontFamily: 'FC Daisy', fontSize: 50)),
                  TextField(
                    controller: score1,
                    decoration: InputDecoration(
                        labelText: 'Score_of_Thai',
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: score2,
                    decoration: InputDecoration(
                        labelText: 'Score_of_Math',
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: score3,
                    decoration: InputDecoration(
                        labelText: 'Score_of_Math',
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: score4,
                    decoration: InputDecoration(
                        labelText: 'Score_of_Sci',
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: score5,
                    decoration: InputDecoration(
                        labelText: 'Score_of_English',
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: score6,
                    decoration: InputDecoration(
                        labelText: 'Score_of_Socity',
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: score7,
                    decoration: InputDecoration(
                        labelText: 'Score_of_Computer',
                        border: OutlineInputBorder()),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                    child: ElevatedButton(
                      onPressed: () {
                        var cal = (double.parse(score1.text) +
                                double.parse(score2.text) +
                                double.parse(score3.text) +
                                double.parse(score4.text) +
                                double.parse(score5.text) +
                                double.parse(score6.text) +
                                double.parse(score7.text)) /
                            average; //เปลี่ยนข้อความเป็นตัวเลขทศนิยม
                        print("Your GPA is : $cal");

                        setState(() {
                          result.text = 'Your GPA is $cal';
                        });
                      },
                      child: Text('Calculate!!!'),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.lightBlue[300]),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.fromLTRB(50, 10, 50, 15)),
                          textStyle: MaterialStateProperty.all(
                              TextStyle(fontFamily: 'FC Daisy', fontSize: 20))),
                    ),
                  ),
                  Text(
                    result.text,
                    style: TextStyle(fontFamily: 'FC Daisy', fontSize: 30),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
