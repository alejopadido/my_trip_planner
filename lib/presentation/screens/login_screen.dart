import 'package:flutter/material.dart';
import 'package:my_trip_planner/core/constants/app_colors.dart';
import 'package:my_trip_planner/core/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Radius containerRadius = Radius.circular(40.0);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/img/waterfall-background.jpg',
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'NAVIGATE THE WORLD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60.0,
                    fontFamily: 'Oswald',
                    height: 1,
                  ),
                ),
                const SizedBox(height: 15.0),
                const Text('Let Trip guide you',
                    style: TextStyle(color: Colors.white, fontSize: 18.0)),
                const SizedBox(height: 25.0),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: containerRadius, topRight: containerRadius),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    color: Colors.white,
                    child: const Column(
                      children: [
                        SizedBox(height: 20.0),
                        FilledIconButtonWidget(
                          buttonTxt: 'Create new account',
                          buttonIcon: Icons.chevron_right,
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'I already have an account',
                          style: TextStyle(
                              color: AppColors.purple,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 50.0),
                        Text(
                          'Sign in using',
                          style: TextStyle(
                            color: AppColors.lightGrey,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconCircleContainerWidget(
                                imgPath: 'assets/img/apple-logo.png'),
                            IconCircleContainerWidget(
                                imgPath: 'assets/img/google-logo.png'),
                            IconCircleContainerWidget(
                                imgPath: 'assets/img/facebook-logo.png'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
