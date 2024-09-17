import 'package:flutter/material.dart';

class SneakPeek3 extends StatefulWidget {
  const SneakPeek3({super.key});

  @override
  State<SneakPeek3> createState() => _SneakPeek3State();
}

class _SneakPeek3State extends State<SneakPeek3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/third.jpg"),
            const Text(
              "Bills Payment\nMade Easy",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              "Pay monthly and daily bills at home\nin the site of TransferMe.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.black,
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.lightBlueAccent,
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.lightBlueAccent,
                ),
              ],
            ),
            const SizedBox(height: 40),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, 'sign_up_screen');
              },
              color: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: const Text(
                "Continue",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
