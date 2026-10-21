import 'package:flutter/material.dart';
import 'package:futter_getx_assignment/Student_app_home_view/student_app_home_screen/student_app_home_screen.dart';
import 'package:futter_getx_assignment/student_profile_view/student_profile_widget/student_profie_counter_widget.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: StudentAppHomeScreen(),
    );
  }
}

