import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], 

      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey),
          onPressed: () {
            
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  'Transactions',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  '2021',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Text('JAN', style: TextStyle(fontSize: 14, color: Colors.grey)),
                SizedBox(width: 8),
                Text('FEB', style: TextStyle(fontSize: 14, color: Colors.grey)),
                SizedBox(width: 8),
                Text('MAR', style: TextStyle(fontSize: 14, color: Colors.grey)),
                SizedBox(width: 8),
                Text('APR', style: TextStyle(fontSize: 14, color: Colors.grey)),
                SizedBox(width: 8),
                Text('MAY',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          15.0), 
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      child: const ListTile(
                        title: Text('Shopping', style: TextStyle(fontSize: 15)),
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
                          15.0), 
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
                          15.0), 
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
                          15.0), 
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
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          15.0), 
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
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          15.0), 
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Container(
                      child: const ListTile(
                        title: Text('Books', style: TextStyle(fontSize: 15)),
                        subtitle: Text('Fri 08.05.2021',
                            style: TextStyle(fontSize: 13)),
                        trailing: Text('\$14.00',
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
                        title: Text('Spotifyy', style: TextStyle(fontSize: 15)),
                        subtitle: Text('Mon 11.03.2021',
                            style: TextStyle(fontSize: 13)),
                        trailing: Text('\$8.99',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          // Add the rest of your transaction history UI here
        ),
      ),
    );
  }
}
