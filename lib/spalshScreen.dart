import 'dart:async';

import 'package:dummy/homeScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  status(){
    return Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>HomeScreen() ));
  }

   @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => status());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                color: Colors.white
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Container(
                    //   child: Image(
                    //     image: AppImage.logo,
                    //     height: AppTheme.fullHeight(context) / 2,
                    //     width: AppTheme.fullWidth(context) / 1.5,
                    //   ),
                    // ),
                    Container(
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.orange
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}