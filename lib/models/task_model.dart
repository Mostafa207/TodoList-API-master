class TaskModel {
  List<dynamic> result;
  int total; 


  TaskModel({required this.result, required this.total});

 
  factory TaskModel.fromJson(Map<String, dynamic> json) {
  
    List<dynamic> fullData = json["todos"] ;

  
    // fullData = fullData.map((todo) {
    //   return {
    //     "id": todo["id"],
    //     "todo": todo["todo"],
    //     "completed": todo["completed"],
    //     "userId": todo["userId"],
    //   };
    // }).toList();

   
    return TaskModel(result: fullData, total: fullData.length);
  }
}
