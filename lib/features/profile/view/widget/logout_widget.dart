import 'package:flutter/material.dart';
import 'package:task_flutter/common/dialoge_widget.dart';
import 'package:task_flutter/features/auth/logic/controller/auth_controller.dart';

class LogOutWidget extends StatelessWidget {
  const LogOutWidget({Key? key, required this.authController})
      : super(key: key);

  /// controller ///
  final AuthController authController;
  @override
  Widget build(BuildContext context) {
    /// theme ///
    final theme = Theme.of(context).textTheme;

    return DialogWidget(
      title: 'pleaseConfirm',
      content: "AreYouSureToLogOut",
      textButton: 'logout',
      onPressed: () {},
      child: Row(
        children: [
          Text(
            "logout",
            style: theme.headlineMedium,
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.logout,
          ),
        ],
      ),
    );
  }
}
