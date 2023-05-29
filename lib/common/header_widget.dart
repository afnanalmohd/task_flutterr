import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key, required this.onPressed, this.title})
      : super(key: key);
  final Function() onPressed;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          title != null ? title! : '',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        leading: IconButton(
            onPressed: onPressed, icon: const Icon(Icons.arrow_back_ios_new)));
  }
}
