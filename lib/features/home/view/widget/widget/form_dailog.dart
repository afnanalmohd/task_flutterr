
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../logic/controller/api_controller.dart';
import '../../../model/local_model.dart';


class FormDialog extends StatelessWidget {
  FormDialog({Key? key}) : super(key: key);
  final controller = Get.find<ApiController>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add item'),
      content: SizedBox(
        height: 200,
        child: Column(
          children: [
            TextField(
              controller: controller.titleController,
              decoration: const InputDecoration(hintText: 'Title'),
            ),
            TextField(
              controller: controller.descriptionController,
              decoration:
                  const InputDecoration(hintText: 'Description'),
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
            var data = ToDoModel(
              title: controller.titleController.text,
              description: controller.descriptionController.text,
             date: DateTime.now().toString(),
            );
            await controller.postData(data);
            controller.refreshData();
            controller.clearController();

          },
        ),
      ],
    );
  }
}
