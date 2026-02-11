import 'package:csacademy/core/widget/customText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constant/appColors.dart';
import '../../core/constant/appString.dart';
class Goldview extends StatelessWidget {
  const Goldview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Appcolors.gold),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        centerTitle: true,
        title: Text(
          AppString.goldAppbar,
          style: TextStyle(color: Appcolors.gold, fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
      backgroundColor: Appcolors.homeColor,
      body: Center(
        child: Column(
          spacing: 30,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: AppString.goldImage,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Appcolors.gold.withOpacity(0.5), blurRadius: 20, spreadRadius: 5)
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    AppString.goldImage,
                    height: 180,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Customtext(
                text: '3,540 USD',
                color: Appcolors.gold,
                fontWeight: FontWeight.bold,
                fontSize: 35
            ),
          ],
        ),
      ),
    );
  }
}