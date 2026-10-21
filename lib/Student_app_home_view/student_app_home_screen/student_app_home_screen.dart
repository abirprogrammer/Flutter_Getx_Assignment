import 'package:flutter/material.dart';
import 'package:futter_getx_assignment/student_profile_view/student_profile_screeen/student_profile_screen.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import '../student_app_home_widget/custom_alert_dialog.dart';
import '../student_app_home_widget/student_home_widget.dart';
import '../student_app_home_widget/student_info_widget.dart';

class StudentAppHomeScreen extends StatelessWidget {
  const StudentAppHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Student App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              CustomAlertDialog.show(
                context: context,
                title: 'Settings',
                message: 'Do you want to navigate to Settings?',

                yesText: 'YES',
                noText: 'NO',

                yesColor: Colors.green,
                noColor: Colors.red,

                onYes: () {
                  // Navigate to Settings Screen
                  Get.snackbar(
                    'Success',
                    'You clicked YES button!',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.green,
                    colorText: Colors.white,
                    duration: const Duration(seconds: 3),
                    margin: const EdgeInsets.all(15),
                    borderRadius: 12,
                    icon: const Icon(
                      Icons.check_circle,
                      color: Colors.white,
                    ),
                  );
                },

                onNo: () {
                  Get.snackbar(
                    'Cancelled',
                    'You cancelled the action!',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                    duration: const Duration(seconds: 3),
                    margin: const EdgeInsets.all(15),
                    borderRadius: 12,
                    icon: const Icon(
                      Icons.cancel,
                      color: Colors.white,
                    ),
                  );
                },
              );
            },
            icon: const Icon(
              Icons.settings,
              size: 30,
            ),
          ),
        ],
      ),

      body:
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Profile Widget
            const StudentProfileWidget(),

            // Student Info Widget
            const StudentInfoWidget(
              imageUrl: 'https://cdn-icons-png.magnific.com/256/6997/6997484.png',
              title: 'Student Name',
              studentName: 'MD.Abir Bin Kabir',),

            const SizedBox(height: 5,),


            const StudentInfoWidget(
              imageUrl: 'https://static.vecteezy.com/system/resources/previews/008/627/625'
                  '/non_2x/student-id-card-filled-line-icon-vector.jpg',
              title: 'Student ID',
              studentName: '772480',),


            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  // View Profiles action
                  Get.off(()=> StudentProfileScreen());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 22,
                  ),
                  elevation: 6,
                  shadowColor: Colors.blue.withOpacity(0.4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "View Profiles",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward_rounded,
                      size: 25,
                    ),
                  ],
                ),
              ),
            )



          ],
        ),
      ),
    );
  }
}

