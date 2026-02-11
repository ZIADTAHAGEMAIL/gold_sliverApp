import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constant/appColors.dart';
import '../../core/constant/appString.dart';
import '../../core/widget/customText.dart';
class sliverView extends StatelessWidget {
  const sliverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Appcolors.sliver),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        centerTitle: true,
        title: Text(
          AppString.sliverAppbar,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Appcolors.sliver),
        ),
      ),
      backgroundColor: Appcolors.homeColor,
      body: Center(
        child: Column(
          spacing: 30,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: AppString.sliverImage,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Appcolors.sliver.withOpacity(0.5),
                        blurRadius: 20, spreadRadius: 5)
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    AppString.sliverImage,
                    height: 180,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            Customtext(
                text: '1,200 USD',
                color: Appcolors.sliver,
                fontWeight: FontWeight.bold,
                fontSize: 35
            ),
          ],
        ),
      ),
    );
  }
}