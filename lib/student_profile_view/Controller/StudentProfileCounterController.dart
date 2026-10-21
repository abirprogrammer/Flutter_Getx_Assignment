
import 'package:get/get.dart';

class StudentProfileCounterController extends GetxController {
final RxInt counter = 0.obs;

void increment() {
counter.value++;
}

void decrement() {
if (counter.value > 0) {
counter.value--;
}
}
}
