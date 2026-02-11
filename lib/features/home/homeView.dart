import 'package:csacademy/core/constant/appColors.dart';
import 'package:csacademy/core/constant/appString.dart';
import 'package:csacademy/features/home/goldView.dart';
import 'package:csacademy/features/home/sliverView.dart';
import 'package:flutter/material.dart';

import '../../core/widget/cutomButton.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          AppString.homeAppbar,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
        ),
      ),
      backgroundColor: Appcolors.homeColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TweenAnimationBuilder(
                duration: const Duration(milliseconds: 600),
                tween: Tween<double>(begin: 0, end: 1),
                builder: (context, double value, child) {
                  return Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset(0, 30 * (1 - value)),
                      child: child,
                    ),
                  );
                },
                child: Cutombutton(
                  text: AppString.gold,
                  ontap: () => Navigator.push(context, MaterialPageRoute(builder: (c) => const Goldview())),
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  buttonColor: Appcolors.gold,
                ),
              ),


              TweenAnimationBuilder(
                duration: const Duration(milliseconds: 800),
                tween: Tween<double>(begin: 0, end: 1),
                builder: (context, double value, child) {
                  return Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset(0, 30 * (1 - value)),
                      child: child,
                    ),
                  );
                },
                child: Cutombutton(
                  text: AppString.sliver,
                  ontap: () => Navigator.push(context, MaterialPageRoute(builder: (c) => const sliverView())),
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  buttonColor: Appcolors.sliver,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}