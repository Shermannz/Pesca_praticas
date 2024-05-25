import 'package:flutter/material.dart';
import 'package:pesca_praticas/pages/home_page.dart';
import 'package:pesca_praticas/pages/more_pages/banners/banner_page.dart';
import 'package:pesca_praticas/pages/more_pages/bottom_navigator/bottom_navigator_page.dart';
import 'package:pesca_praticas/pages/more_pages/bottom_navigator/bottom_navigator_page2.dart';
import 'package:pesca_praticas/pages/more_pages/container/container_page.dart';
import 'package:pesca_praticas/pages/more_pages/desafio/instagram_page.dart';
import 'package:pesca_praticas/pages/more_pages/gauge%20bloc/gauge_page.dart';
import 'package:pesca_praticas/pages/more_pages/gauge/gauge_page.dart';
import 'package:pesca_praticas/pages/more_pages/quiz/quiz_bloc.dart';
import 'package:pesca_praticas/pages/more_pages/quiz/quiz_page.dart';
import 'package:pesca_praticas/pages/more_pages/quiz/quiz_valueNotifier.dart';
import 'package:pesca_praticas/pages/more_pages/stackjson/stack_json_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (_) => HomePage(),
        "/containerPage": (_) => ContainerPage(),
        "/stackJson": (_) => StackJsonPage(),
        "/bottomNavigator": (_) => BottomNavigatorPage(),
        "/bottomNavigator2": (_) => BottomNavigatorPage2(),
        "/bannerPage": (_) => BannerPage(),
        "/instagram": (_) => InstagramPage(),
        "/quiz_bloc": (_) => QuizBloc(),
        "/quiz": (_) => QuizPage(),
        "/quiz_valueNotifier": (_) => QuizvalueNotifier(),
        "/gauge": (_) => GaugePage(),
        "/gauge2": (_) => GaugePage2(),
      },
    );
  }
}
