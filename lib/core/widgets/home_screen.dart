import 'package:flutter/material.dart';
import 'package:mvvm_arch/core/constants/app_colors.dart';
import 'package:mvvm_arch/core/constants/app_strings.dart';
import 'package:mvvm_arch/core/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        title: Text('Home Screen' , style: TextStyle(color: AppColors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CustomButton(text:AppStrings.gold,  width: MediaQuery.of(context).size.width / 2, onPressed: (){} , color: AppColors.goldColor,),
            SizedBox(height: 16),
            CustomButton(text:AppStrings.silver,  width: MediaQuery.of(context).size.width / 2,onPressed: (){} , color:  AppColors.silverColor,)
          ],)
        ),
      ),
    );
  }
} 