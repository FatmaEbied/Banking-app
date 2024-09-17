import 'package:flutter/material.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.asset(
                'assets/images/oo.jpg',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            const Expanded(
              child: Text(
                'Transfer',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(width: 50),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Color.fromARGB(255, 58, 0, 192),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: 100,
                      height: 70,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset("assets/images/cc1.png"),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: 100,
                      height: 70,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset("assets/images/ss2.png"),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: 100,
                      height: 70,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset("assets/images/cc3.png"),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: 100,
                      height: 70,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Image.asset("assets/images/cc4.png"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor:
                          Color.fromARGB(255, 107, 208, 233).withOpacity(0.7),
                      child: Text(
                        'EA',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Emily Atkinson',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'AW BANK UNI 234-46589-000',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 7),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor:
                          Color.fromARGB(255, 211, 136, 247).withOpacity(0.7),
                      child: Text(
                        'OW',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Oliver Wilson ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'AW BANK UNI 234-46589-000',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 7),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor:
                          Color.fromARGB(255, 255, 163, 194).withOpacity(0.7),
                      child: Text(
                        'SB',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sophie Baker',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'AW BANK UNI 234-46589-000',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 7),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor:
                          Color.fromARGB(255, 70, 247, 253).withOpacity(0.7),
                      child: Text(
                        'CW',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Charlie William',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'AW BANK UNI 234-46589-000',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 7),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor:
                          Color.fromARGB(255, 247, 227, 137).withOpacity(0.7),
                      child: Text(
                        'ES',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Evelyn Smith',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'AW BANK UNI 234-46589-000',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 7),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.pinkAccent.withOpacity(0.7),
                      child: Text(
                        'ES',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Evelyn Smith',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'AW BANK UNI 234-46589-000',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
