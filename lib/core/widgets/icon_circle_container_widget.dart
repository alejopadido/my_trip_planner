import 'package:flutter/cupertino.dart';
import 'package:my_trip_planner/core/constants/app_colors.dart';

class IconCircleContainerWidget extends StatelessWidget {
  final String imgPath;

  const IconCircleContainerWidget({super.key, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    const double size = 60.0; // Set width and height for the circle

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.lightGrey, width: 0.2),
      ),
      child: ClipOval(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset(
            imgPath,
            width: 35.0,
            height: 35.0,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
