import 'package:flutter/material.dart';

import '../Model/Department.dart';



class detailDepartment extends StatelessWidget {
  Department dp;

  detailDepartment({required this.dp});

  @override
  Widget build(BuildContext bc) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            margin: EdgeInsets.all(5),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.lightBlueAccent,
                elevation: 10,
                child: ListTile(
                  leading: Text(dp.id.toString()),
                  title: Text(dp.label.toString()),
                  subtitle: Text(dp.mission.toString()),
                )
            )
        )
    );
  }
}

