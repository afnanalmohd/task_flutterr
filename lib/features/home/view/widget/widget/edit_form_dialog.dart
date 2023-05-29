 import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../logic/controller/api_controller.dart';
import '../../../model/local_model.dart';


class EditFormDialog extends StatelessWidget {
  EditFormDialog({Key? key, required this.toDoModel}) : super(key: key);
  final ToDoModel? toDoModel;
  final controller = Get.find<ApiController>();

  @override
  Widget build(BuildContext context) {
    controller.titleController.text = toDoModel!.title!;
    controller.descriptionController.text = toDoModel!.description;

    return AlertDialog(
      title: const Text('Edit item'),
      content: SizedBox(
        height: 200,
        child: Column(
          children: [
            TextField(
              controller: controller.titleController,
            ),
            TextField(
              controller: controller.descriptionController,
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Save', style: TextStyle(color: Colors.black),),
          onPressed: () async {
            Get.back();
            //add func
            print(controller.titleController.text);
            var data = ToDoModel(
              id: toDoModel?.id,
              title: controller.titleController.text,
              description: controller.descriptionController.text,
              date: DateTime.now().toString(),
            );
            var respone = await controller.updateData(data);
            print(respone);
            controller.refreshData();
            controller.clearController();
          },
        ),
      ],
    );
  }
}
