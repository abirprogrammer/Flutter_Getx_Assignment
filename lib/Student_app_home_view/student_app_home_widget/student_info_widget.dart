
import 'package:flutter/material.dart';

class StudentInfoWidget extends StatelessWidget {

  final String imageUrl;
  final String title;
  final String studentName;
  const StudentInfoWidget({super.key,
    required this.imageUrl,
    required this.title,
    required this.studentName
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
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Student Image
             CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                "$imageUrl",
              ),
            ),

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
                    "$studentName",
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
