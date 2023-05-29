import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_flutter/core/constants/api_string.dart';
import 'package:task_flutter/features/auth/model/local_model_user.dart';
import 'package:task_flutter/features/home/logic/service/api_service.dart';




class AuthController extends GetxController {

  final apiService = ApiService();
  var selectedDate = DateTime.now();

  //Password icon
  bool isVisibility = false;

  //for controllers in log in
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  //Change Password
  TextEditingController passwordController = TextEditingController();
  TextEditingController yourPasswordController = TextEditingController();
  TextEditingController resetPasswordController = TextEditingController();

  String date = DateTime.now().toString();


  final Map<String, String> headers = {
    'Access-Control-Allow-Origin': '*',
    'Content-type': 'application/json',
    'Accept': '*/*',
  };

  refreshData() {
    //getAllData();
    update();
  }

  @override
  onInit() async {
    super.onInit();
    await getAllData();
  }


  ///sing up with email ////
  Future<List> getAllData() async {
    List userList =
    await apiService.getData(url: ApiString.baseUrluser, headers: headers);
    return userList.map((user) => UserModel.fromJson(user)).toList();
  }

  /// post ///
  postData(UserModel model) async {
    await apiService.postData(
      url: ApiString.baseUrluser,
      body: {
        'email': model.email,
        'name': model.name,
        'phone_num':model.phone_num,
        'date': model.birth_date,
        'id':model.id,

      },
      headers: headers,
    );
  }

     /// updata ///
  updateData(UserModel model) async {
    await apiService.updateData(
      url: ApiString.baseUrluser,
      id: "${model.id}",
      body: {
        'email': model.email,
        'name': model.name,
        'phone_num':model.phone_num,
        'date': model.birth_date,
        'id':model.id,
      },
      headers: headers,
    );
  }

   /// delete////
  deleteData(String id) async {
    await apiService.deleteData(url: ApiString.baseUrluser, id: id);
  }

  //fun for Password icon
  void visibility() {
    isVisibility = !isVisibility;
    update();
  }



  /// data picker ////
  //  void selectDate() async {
  //    onTap: () async {
  //      await showDatePicker(
  //        context:Get.context!,
  //        initialDate: DateTime.now(),
  //        firstDate: DateTime(2015),
  //        lastDate: DateTime(2025),
  //      ).then((selectedDate) {
  //        if (selectedDate != null) {
  //          _dateController.text =
  //              DateFormat('yyyy-MM-dd').format(selectedDate);
  //        }
  //      });
  //    },
  //    validator: (value) {
  //    if (value == null || value.isEmpty) {
  //    return 'Please enter date.';
  //    }
  //    return null;
  //    }
  // }



    clearControllers() {
      nameController.clear();
      emailController.clear();
      phoneController.clear();
    }
  }
