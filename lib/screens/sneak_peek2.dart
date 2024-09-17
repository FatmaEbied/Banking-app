import 'package:flutter/material.dart';

class SneakPeek2 extends StatefulWidget {
  const SneakPeek2({super.key});

  @override
  State<SneakPeek2> createState() => _SneakPeek2State();
}

class _SneakPeek2State extends State<SneakPeek2> {
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
            Image.asset("assets/images/second.png"),
            const Text(
              "Free Transactions",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              "Provides the quality of the financial system\nWith free money transactions without any fees.",
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
                  backgroundColor: Colors.black,
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
                Navigator.pushNamed(context, 'sneak_peek3');
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
