
import 'package:flutter/material.dart';

import '../core/constant.dart';
import '../core/resources/manager_color.dart';
import '../core/resources/manager_font hight.dart';
import '../core/resources/manager_icon_size.dart';
import '../core/resources/manager_radios.dart';
import '../core/resources/manager_widthe.dart';
import '../core/widgets/base_text.dart';




class MainScreen extends StatefulWidget {

  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            counter ++;});
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: ManagerColors.transparent,
        elevation: Constants.appBarElevation,
        title: baseText(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.info,
              color: ManagerColors.white,
              size: ManagerIconSizes.s36,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/azkar.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: ManagerWidth.w100,
              height: ManagerHeight.h40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: ManagerColors.primaryColor,
                borderRadius: BorderRadius.circular(
                  ManagerRadius.r12,
                ),
              ),
              child: baseText(text: '$counter'),
            ),
          ),
        ],
      ),
    );
  }
}