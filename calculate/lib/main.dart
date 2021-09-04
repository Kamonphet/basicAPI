import 'package:calculate/pages/calc.dart';
import 'package:calculate/pages/contract.dart';
import 'package:calculate/pages/home.dart';
import 'package:calculate/pages/info.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      title: 'My School',
    );
  }
}

class MainPage extends StatefulWidget {
  //onst MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final tabs = [HomePage(), CalculatePage(), ContractPage(), InfoPage()]; //list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('My School',style: TextStyle(fontFamily: 'FC Daisy', fontSize: 40),)),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, //หน้าปัจจุบันที่เลือก
        items: [
          // หน้าแต่ละหน้ามีไอคอนอะไร?
          BottomNavigationBarItem(
              icon: Icon(Icons.home),label: 'Home',backgroundColor: Colors.blue[200]),
          BottomNavigationBarItem(
              icon: Icon(Icons.calculate), label: 'Cal Grade'),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: 'Follow Me'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info')
        ],
        selectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            print(index);
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
