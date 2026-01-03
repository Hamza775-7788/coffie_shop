import 'package:coffie_shop/core/constant/image_constiant.dart';
import 'package:coffie_shop/core/shared/buttons.dart';
import 'package:coffie_shop/core/theme/app_theme.dart';
import 'package:coffie_shop/feature/home/views/home_view.dart';
import 'package:flutter/material.dart';

class WelocmeViewPage extends StatelessWidget {
  const WelocmeViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    child: Image.asset(MyAppImage.welcome, fit: BoxFit.cover),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),

          Container(
            child: Column(
              children: [
                Expanded(flex: 6, child: Container()),
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,

                          Colors.black,
                          Colors.black,
                        ],
                      ),
                    ),

                    child: Column(
                      children: [
                        Text(
                          "Fall in Love with \nCoffee in Blissful Delight!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "Welcome to our cozy coffee corner, where every cup is a delightful for you.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: MyAppColor.subTitleText,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Expanded(
                              child: MyGenralButton(
                                name: "Get Started",
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeView(),
                                    ),
                                    (context) => false,
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
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
