import 'package:flutter/material.dart';

class StudentProfileWidget extends StatelessWidget {
  const StudentProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),

        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(

                    radius: 50,

                    backgroundImage:
                    NetworkImage("https://avatars.githubusercontent.com/u/338652689?v=4"),
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Text(
                "MD.Abir Bin Kabir",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),

              SizedBox(height: 5,),

              Text(
                "Flutter Student",
                style: const TextStyle(
                  fontSize: 20,

                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                  decoration: TextDecoration.none,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
