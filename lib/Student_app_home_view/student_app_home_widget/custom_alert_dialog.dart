
import 'package:flutter/material.dart';

class CustomAlertDialog {
static void show({
required BuildContext context,
String title = 'Confirmation',
required String message,
String yesText = 'Yes',
String noText = 'No',
Color yesColor = Colors.green,
Color noColor = Colors.red,
Color titleColor = Colors.black,
Color messageColor = Colors.black87,
required VoidCallback onYes,
VoidCallback? onNo,
}) {
showDialog(
context: context,
builder: (dialogContext) {
return AlertDialog(
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20),
),
title: Text(
title,
style: TextStyle(
fontWeight: FontWeight.bold,
color: titleColor,
),
),
content: Text(
message,
style: TextStyle(
fontSize: 16,
color: messageColor,
),
),
actionsPadding: const EdgeInsets.fromLTRB(
16, 0, 16, 16,
),
actions: [
// No Button
TextButton(
onPressed: () {
Navigator.pop(dialogContext);
onNo?.call();
},
style: TextButton.styleFrom(
backgroundColor: noColor,
foregroundColor: Colors.white,
padding: const EdgeInsets.symmetric(
horizontal: 22,
vertical: 12,
),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(10),
),
),
child: Text(noText),
),

// Yes Button
TextButton(
onPressed: () {
Navigator.pop(dialogContext);
onYes();
},
style: TextButton.styleFrom(
backgroundColor: yesColor,
foregroundColor: Colors.white,
padding: const EdgeInsets.symmetric(
horizontal: 22,
vertical: 12,
),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(10),
),
),
child: Text(yesText),
),
],
);
},
);
}
}
