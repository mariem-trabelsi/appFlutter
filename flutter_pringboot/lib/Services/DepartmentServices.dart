import 'package:http/http.dart';
import "dart:convert";

import '../Model/Department.dart';
import 'Constantes.dart';

class DepartmentServices{
  static Future<List<Department>?> getDepartments() async
  {
    Response response =await get(Uri.parse(Constantes.apiUrl_departments));
    if(response.statusCode==200)
      {
        List<dynamic> body=jsonDecode(response.body);
        List<Department> dp=body.map((dynamic item)=>
        Department.fromJson(item)).toList();
        return dp;

      }
    else
      return null;
  }

  static Future <int> addDepartments(Department dp) async
  {
    Response response =await post(Uri.parse(Constantes.apiUrl_departments),
    headers:<String,String>{
      'Content-type': 'application/json; charset=UTF-8',}, body: jsonEncode(dp));

    return response.statusCode;
  }

  static Future <int> deleteDepartments(int id) async
  {
    Response response =await delete(Uri.parse(Constantes.apiUrl_departments+"/$id"));
     return response.statusCode;
  }

}// fin de la classe