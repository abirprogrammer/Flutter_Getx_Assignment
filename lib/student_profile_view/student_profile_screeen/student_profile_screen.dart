import 'package:flutter/material.dart';
import 'package:futter_getx_assignment/student_profile_view/student_profile_widget/student_profie_counter_widget.dart';
import 'package:futter_getx_assignment/student_profile_view/student_profile_widget/student_profile_info_widget.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';

import '../../Student_app_home_view/student_app_home_widget/student_info_widget.dart';
import '../student_profile_widget/student_imagetext_widget.dart';



class StudentProfileScreen extends StatelessWidget {
  const StudentProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
          Get.snackbar(
            'Cannot Navigate This Screen',
            'Because this screen was navigated to using Get.off(()=> StudentProfileScreen());',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white,
            duration: const Duration(seconds: 5),
            margin: const EdgeInsets.all(15),
            borderRadius: 12,
            icon: const Icon(
              Icons.cancel,
              color: Colors.white,
            ),
          );
        },
          icon: Icon(Icons.arrow_back,
          size: 30,
        ),
        ),

        title: Text("Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),

      ),

      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Profile Widget

            StudentImagetextWidget(),
            SizedBox(height: 5,),

            StudentProfileInfoWidget(
              title: 'Email',
              studentinfo: 'Kmdabirbink@gmail.com',
              icon: (Icons.mail),
            ),
            SizedBox(height: 2,),

              StudentProfileInfoWidget(
                title: 'Department',
                studentinfo: 'Computer Science',
                icon: (Icons.school),
              ),
            SizedBox(height: 2,),

        StudentProfileInfoWidget(
          title: 'Join date',
          studentinfo: '12 March 2024',
          icon: (Icons.date_range),
        ),

            SizedBox(height: 10,),

            StudentProfieCounterWidget()






            // Padding(
            //   padding: const EdgeInsets.all(20),
            //   child: ElevatedButton(
            //     onPressed: () {
            //       // View Profiles action
            //     },
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.blue,
            //       foregroundColor: Colors.white,
            //       padding: const EdgeInsets.symmetric(
            //         horizontal: 24,
            //         vertical: 22,
            //       ),
            //       elevation: 6,
            //       shadowColor: Colors.blue.withOpacity(0.4),
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //     ),
            //     child: const Row(
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         Text(
            //           "View Profiles",
            //           style: TextStyle(
            //             fontSize: 20,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //         SizedBox(width: 10),
            //         Icon(
            //           Icons.arrow_forward_rounded,
            //           size: 25,
            //         ),
            //       ],
            //     ),
            //   ),
            // )



          ],
        ),
      ),
    );
  }
}

