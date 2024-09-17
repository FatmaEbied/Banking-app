import 'package:flutter/material.dart';

class SneakPeek1 extends StatefulWidget {
  const SneakPeek1({super.key});

  @override
  State<SneakPeek1> createState() => _SneakPeek1State();
}

class _SneakPeek1State extends State<SneakPeek1> {
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
            Image.asset("assets/images/first.png"),
            const Text(
              "Easy, Fast & Trusted",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              "Fast money transfer and guaranteed safe\ntransactions with others.",
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
                  backgroundColor: Colors.lightBlueAccent,
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.lightBlueAccent,
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.black,
                ),
              ],
            ),
            const SizedBox(height: 40),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, 'sneak_peek2');
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
