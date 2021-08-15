import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';


void main(){
  runApp(myApp());
}


class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lighttheme(context),
      darkTheme: MyTheme.darkTheme(context),
     
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        "/" : (context)=> LoginPage(),
        MyRoutes.homeRoute: (context)=> HomePage(), 
        MyRoutes.loginRoute: (context)=> LoginPage()
      },
    );
  }
}