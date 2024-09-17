import 'package:flutter/material.dart';

class AccountOverview extends StatelessWidget {
  const AccountOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/yy.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Picture and Greeting
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/oo.jpg"),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Good morning',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromARGB(179, 0, 0, 0),
                        ),
                      ),
                      Text(
                        'ANDREA',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30), // Add some space between the rows

              Center(
                child: Container(
                  width: 350,
                  height: 170,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF4A00E0),
                        Color.fromARGB(255, 223, 131, 203),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 10),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Current Balance',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '\$12567.89',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '3452  1235  7894  1678',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 18,
                          letterSpacing: 1.5,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '05/2025',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'LAST TRANSACTIONS',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 122, 117, 117),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15.0), // Set your desired border radius here
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        child: const ListTile(
                          title:
                              Text('Shopping', style: TextStyle(fontSize: 15)),
                          subtitle: Text('Tue 12.05.2021',
                              style: TextStyle(fontSize: 13)),
                          trailing: Text('\$29.90',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15.0), // Set your desired border radius here
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        child: const ListTile(
                          title: Text('Movie Ticket',
                              style: TextStyle(fontSize: 15)),
                          subtitle: Text('Mon 11.05.2021',
                              style: TextStyle(fontSize: 13)),
                          trailing: Text('\$9.50',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15.0), // Set your desired border radius here
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        child: const ListTile(
                          title: Text('Amazon', style: TextStyle(fontSize: 15)),
                          subtitle: Text('Mon 11.05.2021',
                              style: TextStyle(fontSize: 13)),
                          trailing: Text('\$19.30',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15.0), // Set your desired border radius here
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        child: const ListTile(
                          title: Text('Udemy', style: TextStyle(fontSize: 15)),
                          subtitle: Text('Tue 12.05.2021',
                              style: TextStyle(fontSize: 13)),
                          trailing: Text('\$20.00',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
