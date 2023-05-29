
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../logic/controller/api_controller.dart';
import '../../../model/local_model.dart';
import 'edit_form_dialog.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.data,
    required this.controller,
    required this.date,
  });

  final ToDoModel? data;
  final DateTime date;
  final ApiController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              offset: const Offset(0, 3),
              spreadRadius: 1,
              color: Colors.grey.shade100,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data?.title ?? ""),
                  Text(data?.description ?? ""),
                ],
              ),
              Text(DateFormat.yMMMMEEEEd().format(date)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  Get.dialog(EditFormDialog(toDoModel: data,));
                },
                icon: const Icon(
                  Icons.edit,
                ),
              ),
              IconButton(
                onPressed: () async {
                 await controller.deleteData('${data?.id}');
                  controller.refreshData();
                },
                icon: const Icon(
                  Icons.delete,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
