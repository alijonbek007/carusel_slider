import 'package:cars_app/constants/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double? height;
  double? width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: main_color,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: height! * 0.13,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Home Page',
          style: TextStyle(
            color: Colors.white,
            
          ),
        ),
        centerTitle: true,
        
      ),
      body: Container(
        height: height,
        width: width,
        // color: main_color,
        child: Stack(
          children: [
            Positioned(
              height: height! / 2,
              width: width,
              child: Container(
                height: height! / 2,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.elliptical(
                      height! / 4,
                      width! / 10,
                    ),
                    bottomLeft: Radius.elliptical(
                      height! / 4,
                      width! / 10,
                    ),
                  ),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      gradient1,
                      gradient2,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
