
import 'package:flutter/material.dart';

class StudentProfileInfoWidget extends StatelessWidget {

  final IconData icon;
  final String title;
  final String studentinfo;
  const StudentProfileInfoWidget({super.key,
    required this.icon,
    required this.title,
    required this.studentinfo
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Student Image
           Icon(icon),

            const SizedBox(width: 12),

            // Student Information
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$title",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      decoration: TextDecoration.none,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    "$studentinfo",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                    softWrap: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
