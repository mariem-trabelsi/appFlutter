
import 'package:flutter/material.dart';

import '../Model/Department.dart';
import '../Services/DepartmentServices.dart';

class addDepartment extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return addDepartmentState();
  }
}

class addDepartmentState extends State{
  var l=TextEditingController();
  var m=TextEditingController();
  final k=GlobalKey<FormState>();
  @override
  Widget build(BuildContext bc){
    return Scaffold(
        appBar: AppBar(
            leading: GestureDetector( onTap: () { Navigator.pop(context);}, child: Icon(Icons.home)),
            title: Text('Add new Department'),),
            body:ElevatedButton(
               child: Text('Add'),
              onPressed: () async {
                  if (this.k.currentState!.validate()) {
                    //creation d’un department à partir des inputs du Formulaire
                    Department d = Department(label: this.l.text,mission: this.m.text);
                  //ajout du department par appel au service
                    int res = await DepartmentServices.addDepartments(d);
                    String msg = "";
                    if (res == 201)
                      msg = "Success Add";
                    else
                      msg = "Failed to Add";
                  //Affichage du message d’alert
                    showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog( content: Text('$msg'),
                        actions: [ElevatedButton(
                           onPressed: () {
                         Navigator.pop(context);
                            },
                        child: Text("OK"))
                        ],
                      );
                    }
                    );
                    }}
              )
        );
  }
}
