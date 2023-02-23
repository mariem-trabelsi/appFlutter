import 'package:flutter/material.dart';
import 'index.dart';
//import 'detailDepartment.dart';
import 'addDepartment.dart';
//import 'allDepartment.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext bc) {
    return MaterialApp(
      title:"blaaaa",
        debugShowCheckedModeBanner: false,
        initialRoute: '/addDepartment',
      routes:{
        '/addDepartment':(context) => addDepartment(),


    },

    );
  }
}


//'/detailDepartement':(context) => detailDepartment(),
//
//'/allDepartement':(context) => allDepartment(),