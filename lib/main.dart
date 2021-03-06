import 'package:flutter/material.dart';

//Packages
import 'package:firebase_analytics/firebase_analytics.dart';


//Pages
import './pages/splash_page.dart';
import './pages/login_page.dart';

 //services
import './services/navigation_service.dart';

void main() {
  runApp(
    SplashPage(
    key: UniqueKey(),
    onInitializationComplete:(){
      runApp(
        MainApp(),
      );
    } ,
  )
  );
}
  class MainApp extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Chatify',
      theme: ThemeData(
        backgroundColor: Color.fromRGBO(36, 35, 49, 1.0),
      scaffoldBackgroundColor: Color.fromRGBO(36, 35, 49, 1.0),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color.fromRGBO(30, 29, 37, 1.0),
        ),
        ),
        //navigatorKey: NavigationService.navigatorKey ,
        initialRoute: '/login',
        routes: {
          '/login': (BuildContext _context) => LoginPage(),
        },
      ) ;
    }


  }

