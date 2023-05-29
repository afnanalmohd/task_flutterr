import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_flutter/core/constants/localization/controller/localization_controller.dart';




class LocalizationWidget extends StatelessWidget {
  const LocalizationWidget({Key? key,})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return    Column(

      children: [
        Row(
          children: [
            const Icon(Icons.language_outlined),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Language".tr,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: DropdownButton(
                value: LocalizationController().selected,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: LocalizationController().items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  if (newValue == 'Arabic') {
                    LocalizationController().changeLanguage("ar");
                    LocalizationController().setSelected('Arabic');
                  } else {
                    LocalizationController().changeLanguage("en");
                    LocalizationController().setSelected('English');
                  }
                },
              ),
            ),
          ],
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}

