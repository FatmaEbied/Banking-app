import 'package:flutter/material.dart';
import 'package:task3/screens/account_overview.dart';
import 'package:task3/screens/reprots_screen.dart';
import 'package:task3/screens/transaction_history.dart';
import 'package:task3/screens/transfer_screen.dart';

class Navi extends StatefulWidget {
  const Navi({super.key});

  @override
  State<Navi> createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  int currentIndex = 0;

  final List<Widget> screens = [
    AccountOverview(),
    TransactionHistory(),
    ReprotsScreen(),
    TransferScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: screens[currentIndex], // Display the selected screen here
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedItemColor:
            Color.fromARGB(255, 102, 51, 204), // Color for selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
        showSelectedLabels: true,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Account Overview',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send_outlined),
            label: 'Transaction History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up_sharp),
            label: 'Reprots',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
      ),
    );
  }
}

















// import 'package:flutter/material.dart';
// import 'home_screen.dart';
// import 'category_screen.dart';
// import 'search_screen.dart';
// import 'wish_list_screen.dart';
// import 'profile_screen.dart';

// class TestScreen extends StatefulWidget {
//   const TestScreen({super.key});

//   @override
//   State<TestScreen> createState() => _TestScreenState();
// }

// class _TestScreenState extends State<TestScreen> {
//   int currentIndex = 0;
// 
//   final List<Widget> screens = [
//     HomeScreen(),
//     CategoryScreen(),
//      SearchScreen(),
//     WishListScreen(),
//     ProfileScreen(),
//   ];
//  

//   Widget getScreen(int index){
//     switch(index){
//       case 0:
//         return HomeScreen();
//       case 1:
//         return CategoryScreen();
//       case 2:
//         return SearchScreen();
//       case 3:
//         return WishListScreen();
//       case 4:
//         return ProfileScreen();
//       default:
//         return SizedBox();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(child: getScreen(currentIndex)), // Display the selected screen here
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: currentIndex,
//         onTap: (value) {
//           setState(() {
//             currentIndex = value;
//           });
//         },
//         selectedItemColor: Color.fromARGB(255, 102, 51, 204), // Color for selected item
//         unselectedItemColor: Colors.grey, // Color for unselected items
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.dashboard_outlined),
//             label: 'Categories',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite_border),
//             label: 'Wish List',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline_rounded),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }