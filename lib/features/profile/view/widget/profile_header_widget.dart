import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_flutter/core/constants/app_image.dart';
import 'package:task_flutter/core/theme/app_colors.dart';
import 'package:task_flutter/features/auth/logic/controller/auth_controller.dart';


class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    /// call theme///
    final theme = Theme.of(context).textTheme;

    return GetBuilder<AuthController>(builder: (authController) {
      return Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            // Container(
            //  // height: 100,
            //   width: 100,
            //   decoration: BoxDecoration(
            //     color: Colors.deepPurple,
            //     shape: BoxShape.circle,
            //     image: DecorationImage(
            //       image:
            //       AssetImage(AppImages.profileImage),
            //       fit: BoxFit.fill, ),
            //
            //     ),
            //   ),

                    Positioned(
                        top: 70,
                        left: 60,
                        child: InkWell(
                          onTap: () async {
                            // await profileController.pickImage();
                            // await profileController.updateUserPhoto();
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: const BoxDecoration(
                              color: blackColor,
                              shape: BoxShape.circle,
                            ),
                            // child:
                            // const Icon(
                            //   Icons.add,
                            //   color: whiteColor,
                            //   size: 18,
                            // ),
                          ),
                        )),
                  // ]),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
             authController.nameController.text,
              style: theme.headlineLarge,
            ),
            Text(
              authController.emailController.text,
              style: theme.headlineSmall,
            )
      ]));
    });
  }
}
