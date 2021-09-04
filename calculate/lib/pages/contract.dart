import 'package:flutter/material.dart';

class ContractPage extends StatefulWidget {
  //const ContractPage({ Key? key }) : super(key: key);

  @override
  _ContractPageState createState() => _ContractPageState();
}

class _ContractPageState extends State<ContractPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Column(
            children: [Text('Kamonphet'), Text('094-3525-868')],
          ),
        )
      ],
    );
  }
}
