import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_flutter/common/Text_Field_Widget.dart';
import 'package:task_flutter/core/routes/route.dart';
import 'package:task_flutter/features/auth/logic/controller/auth_controller.dart';




class PersonalInformationWidget extends StatelessWidget {
  const PersonalInformationWidget({Key? key, required this.authController, required AuthController autheController})
      : super(key: key);
      /// profile ///
  final AuthController authController;

  @override
  Widget build(BuildContext context) {

    ///theme///
    final theme = Theme.of(context).textTheme;

    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const SizedBox(height: 50),
          /// عنوان ///
          Text(
            'personal Information',
            style: theme.bodyLarge,
          ),

          const SizedBox(height: 50),


            /// name///
          TextfielldWidget(
            controller: authController.nameController,
            obscureText: false,
            prefixIcon: const Icon(
              Icons.person,
            ),
            label: 'fullName',
          ),


            /// email////
          TextfielldWidget(
            enabled: false,
            controller: authController.emailController,
            obscureText: false,
            prefixIcon: const Icon(
              Icons.email,
            ),
            label: 'email',
          ),


          /// phone number///
          TextfielldWidget(
            enabled: false,
            controller: authController.phoneController,
            obscureText: false,
            prefixIcon: const Icon(
              Icons.phone_android,
            ),
            label: 'phoneNum',
          ),

              /// edit bottom  ///
          ElevatedButton(
              onPressed: ()  {},
              child: Text('edit')),

        ]);
  }
}
