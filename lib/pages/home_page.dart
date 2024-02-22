import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  fixedSize: Size(250, 80),
                  backgroundColor: Color(0xFF6d75f2),
                  primary: Colors.white, // Change the text color here
                ),
                onPressed: () {},
                child: Text('Member Mode'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  fixedSize: Size(250, 80),
                  backgroundColor: Color(0xFF6d75f2),
                  primary: Colors.white, // Change the text color here
                ),
                onPressed: () {},
                child: Text('Coach Mode'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
