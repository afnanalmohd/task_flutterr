import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:task_flutter/core/theme/app_colors.dart';
import 'package:task_flutter/features/auth/logic/controller/auth_controller.dart';
import 'package:task_flutter/features/auth/model/local_model_user.dart';
import 'package:task_flutter/features/home/view/screen%20/home_screen.dart';
import 'package:task_flutter/features/profile/view/screen/profile_screen.dart';
import '../../../../core/constants/validation.dart';
import '../../../../common/Text_Field_Widget.dart';


class SignupScreen extends StatelessWidget {
  /// define the controller ///
  final authController = Get.put(AuthController());

  ///vailedation ////
  final formKey = GlobalKey<FormState>();

  SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// theme///
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      /// ABB BAR ///
      appBar: AppBar(
        title: const Text("SingUp"),
      ),

      ///Body ////
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: 382,
              height: 480,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'CreateAccount',
                    style: theme.bodyLarge,
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  /// email ///
                  TextfielldWidget(
                    controller: authController.emailController,
                    obscureText: false,
                    prefixIcon: const Icon(Icons.email),
                    label: 'email ',
                  ),

                  /// name ///
                  TextfielldWidget(
                    controller: authController.nameController,
                    maxLine: 1,
                    obscureText: false,
                    prefixIcon: Icon(Icons.person),
                    label: 'fullname',

                    /// vaildation caondation  ///

                    validator: (value) {
                      if (value.toString().isEmpty) {
                        return 'Enter full name';
                      } else if (!RegExp(Validation.validationName)
                          .hasMatch(value)) {
                        return "Please enter a correct Name";
                      } else if (value.toString().length < 2) {
                        return 'Your Name should be at least 2 long ';
                      } else {
                        return null;
                      }
                    },
                  ),

                  /// password ///
                  /// getbuilder to updata the password///

                  GetBuilder<AuthController>(
                    builder: (authController) {
                      return Container(
                        child: TextfielldWidget(
                          controller: authController.phoneController,
                          label: 'phone number',
                          maxLine: 1,
                          prefixIcon: const Icon(
                            Icons.phone,
                          ),
                          obscureText: false,
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  /// data picker ///
                  TextFormField(
                    controller: authController.dateController,
                    textAlign: TextAlign.center,
                    style: theme.bodySmall,
                    decoration:  const InputDecoration(
                      prefixIcon:
                          Icon(Icons.arrow_back_ios_new, color: mainColor),
                      suffixIcon:
                          Icon(Icons.arrow_forward_ios, color: mainColor),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 0.5),
                      ),
                      hintText: "Brith data",
                     // labelText: "Date of birth",

                    ),
                    readOnly: true,

                    /// on tap ///
                      onTap: () async {
                        await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2015),
                          lastDate: DateTime(2025),
                        ).then((selectedDate) {
                          if (selectedDate != null) {
                            authController.dateController.text = DateFormat('yyyy-MM-dd').format(selectedDate);
                          }
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter date.';
                        }
                        return null;
                      }
                  ),

                  SizedBox(
                    width: 50,
                  ),

                  /// button singup ////
                  ElevatedButton(
                     child: Text('SingUp'),
                      onPressed: () async {
                         if (formKey.currentState!.validate()) {
                           // await authController.apiService;
                        var data = UserModel(
                         email: authController.emailController.text,
                          name: authController.nameController.text,
                          phone_num:int.parse(authController.phoneController.text),
                           //birth_date: DateTime.now().microsecond.toString(),
                        );
                        await authController.postData(data);
                        Get.to(HomeScreen());
                        print(" 1");
                         }
                         authController.refreshData();
                         authController.clearControllers();
                         // else { Get.to(ProfileScreen()); }
                         },
                     ),
                     // },


                  /// button will removit  ////
                  ElevatedButton(
                    onPressed: () {
                      Get.to(HomeScreen());
                    },
                    child: Text('go'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
