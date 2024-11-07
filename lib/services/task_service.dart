import 'package:dio/dio.dart';
import '../models/task_model.dart';

class TaskService {
  static Dio dio = Dio(); //object of Dio
  static Map postData = {
    'todo': '',
    'completed': false,
    'userId': 13
  }; //data of task

  // function to get data
  static Future<TaskModel> getData() async {
    Response response =
        await dio.get('https://dummyjson.com/todos/user/13'); // call get  API
    return TaskModel.fromJson(response.data); // convert data to model
  }

  // function to add new task
  static Future<void> addItem({required String newTask}) async {
    postData['todo'] = newTask;

    await dio.post(
      'https://jsonplaceholder.typicode.com/posts',
      data: postData, 
    );
  }
}
