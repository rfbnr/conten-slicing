// import 'package:flutter/material.dart';
// import 'package:wallet_app/constants/colors.dart';

// class CustomBottomNavigation extends StatefulWidget {
//   const CustomBottomNavigation({super.key});

//   @override
//   State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
// }

// class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
//   int currentPage = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.bottomCenter,
//       child: Container(
//         height: 60,
//         width: double.infinity,
//         margin: const EdgeInsets.only(
//           right: 20,
//           left: 20,
//           bottom: 30,
//         ),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(18),
//           boxShadow: const [
//             BoxShadow(
//               blurRadius: 50,
//               color: Colors.black,
//               offset: Offset(0, 10),
//             )
//           ],
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             _buildNavigationItem(
//               index: 0,
//               imgUrl: "assets/icon-home.png",
//             ),
//             _buildNavigationItem(
//               index: 1,
//               imgUrl: "assets/icon-booking.png",
//             ),
//             _buildNavigationItem(
//               index: 2,
//               imgUrl: "assets/icon-credit-card.png",
//             ),
//             _buildNavigationItem(
//               index: 3,
//               imgUrl: "assets/icon-setting.png",
//             ),
//           ],
//         ),
//       ),
//     );
//   }

  
// }
