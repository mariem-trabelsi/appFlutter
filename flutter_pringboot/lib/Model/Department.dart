
class Department {
  int ? id;
  String label;
  String mission;

  Department({this.id, required this.label, required this.mission});


  factory Department.fromJson(Map<String, dynamic>jsonData){
    int id = jsonData['id'];
    String label = jsonData['label'];
    String mission = jsonData['mission'];
    return Department(id: id, label: label, mission: mission);
  }

  Map<String,dynamic> oJson(){
    return{
      'label':label,
      'mission:':mission,
    };
  }
  @override
  String toString(){
    return'Department{id: $id, label: $label,mission:$mission}';
  }

}