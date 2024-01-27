import 'package:fitness_/pages/homePage.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "images/Cbum.jpeg",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Color(0xFF18181b)])),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 600),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Best',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Workouts',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 228, 97, 88),
                            fontSize: 45,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 50)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                        //Get.to(HomePage());
                      },
                      child: Text(
                        'Get started',
                        style:
                            TextStyle(color: Color.fromARGB(255, 228, 97, 88)),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
