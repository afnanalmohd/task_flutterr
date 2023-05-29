import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({
    super.key,
    this.onPressed,
    required this.title,
    required this.content,
    required this.textButton,
     this.child,
  });

  final VoidCallback? onPressed;
  final String title;
  final String content;
  final String textButton;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return InkWell(
      onTap: () {
        showDialog<bool>(
            context: context,
            barrierDismissible: false,
            builder: (context) => AlertDialog(
                  title: Text(
                    title,
                    style: theme.headlineMedium,
                  ),
                  content: Text(
                    content,
                    style: theme.headlineSmall,
                  ),
                  actions: [
                    TextButton(
                        onPressed: onPressed,
                        child: Text(
                          textButton,
                          style: const TextStyle(color: Colors.red),
                        )),
                    TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child:  Text("cancel".tr))
                  ],
                ));
      },
      child: child,
    );
  }
}
