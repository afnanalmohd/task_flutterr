import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_flutter/common/header_widget.dart';
import 'package:task_flutter/core/routes/route.dart';
import 'package:task_flutter/features/auth/logic/controller/auth_controller.dart';
import 'package:task_flutter/features/profile/view/widget/localizationWidget.dart';
import 'package:task_flutter/features/profile/view/widget/logout_widget.dart';
import 'package:task_flutter/features/profile/view/widget/profile_header_widget.dart';
import 'package:task_flutter/features/profile/view/widget/profile_widget.dart';



class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     /// getx ///
   return GetBuilder<AuthController>(builder: (authController) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
              children: [
            HeaderWidget(
              title: 'profile',
              onPressed: () {
                Get.offNamed(Routes.homeScreen);
              },
            ),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: 390,
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const SizedBox(height: 50),

                  const ProfileHeaderWidget(),

                  const SizedBox(height: 60),
                  ProfileWidget(
                    text: 'personal Information',
                    onTap: () {
                      Get.offNamed(Routes.personalInformationScreen);
                    },
                  ),
                  const LocalizationWidget(),

                 LogOutWidget(
                   authController: authController,
                 ),
                ],
              ),
            ),
          ]
          ),
        ),
      );
    });

   }}

