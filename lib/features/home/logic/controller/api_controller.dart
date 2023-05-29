
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constants/api_string.dart';
import '../../model/local_model.dart';
import '../service/api_service.dart';

class ApiController extends GetxController {
  final apiService = ApiService();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  final Map<String, String> headers = {
    'Access-Control-Allow-Origin': '*',
    'Content-type': 'application/json',
    'Accept': '*/*',
  };

  refreshData() {
    getAllData();
    update();
  }

  @override
  onInit() async {
    super.onInit();
    await getAllData();
  }

  clearController() {
    titleController.clear();
    descriptionController.clear();
  }

  Future<List<ToDoModel>> getAllData() async {
    List todoList =
        await apiService.getData(url: ApiString.baseUrl, headers: headers);
    return todoList.map((todo) => ToDoModel.fromJson(todo)).toList();
  }

  postData(ToDoModel model) async {
    await apiService.postData(
      url: ApiString.baseUrl,
      body: {
        'title': model.title,
        'description': model.description,
        'date': model.date,
      },
      headers: headers,
    );
  }

  updateData(ToDoModel model) async {
    await apiService.updateData(
      url: ApiString.baseUrl,
      id: "${model.id}",
      body: {
        'title': model.title,
        'description': model.description,
        'date': model.date,
      },
      headers: headers,
    );
  }

  deleteData(String id) async {
    await apiService.deleteData(url: ApiString.baseUrl, id: id);
  }
}
