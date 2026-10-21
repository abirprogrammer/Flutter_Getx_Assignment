import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/StudentProfileCounterController.dart';



class StudentProfieCounterWidget extends StatelessWidget {
  StudentProfieCounterWidget({super.key});

  final StudentProfileCounterController controller =
  Get.put(StudentProfileCounterController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 18,
      ),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 12,
            spreadRadius: 1,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'My Counter',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              decoration: TextDecoration.none,
            ),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Minus Button
              CircleAvatar(
                radius: 24,
                backgroundColor: const Color(0xFFF60909),
                child: IconButton(
                  onPressed: controller.decrement,
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),

              // Counter Number
              Obx(
                    () => Text(
                  '${controller.counter.value}',
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),

              // Plus Button
              CircleAvatar(
                radius: 24,
                backgroundColor: const Color(0xFF0EEA36),
                child: IconButton(
                  onPressed: controller.increment,
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}