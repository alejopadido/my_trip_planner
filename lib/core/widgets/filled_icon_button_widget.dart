import 'package:flutter/material.dart';
import 'package:my_trip_planner/core/constants/app_colors.dart';

class FilledIconButtonWidget extends StatelessWidget {
  final String buttonTxt;
  final IconData? buttonIcon;

  const FilledIconButtonWidget(
      {super.key, required this.buttonTxt, this.buttonIcon});

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: () {},
      label: Text(buttonTxt),
      icon: buttonIcon != null ? Icon(buttonIcon) : const SizedBox(),
      iconAlignment: IconAlignment.end,
      style: ButtonStyle(
        padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(vertical: 10.0, horizontal: 80.0)),
        backgroundColor: WidgetStatePropertyAll(AppColors.purple),
      ),
    );
  }
}
