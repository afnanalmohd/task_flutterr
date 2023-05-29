import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_flutter/common/header_widget.dart';
import 'package:task_flutter/core/routes/route.dart';
import 'package:task_flutter/features/auth/logic/controller/auth_controller.dart';
import 'package:task_flutter/features/profile/view/widget/personal_information.dart';


class PersonalInformationScreen extends StatelessWidget {
  const PersonalInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (autheController) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            HeaderWidget(
              onPressed: () {
                Get.offNamed(Routes.profileScreen);
              },
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: 390,
                height: 450,
                child: PersonalInformationWidget(
                  autheController: autheController, authController: autheController,

                )),
          ]
          )
        ),
      );
    });
  }
}