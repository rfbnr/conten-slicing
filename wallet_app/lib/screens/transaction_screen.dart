import 'package:flutter/material.dart';

import '../components/custom_line_chart_widget.dart';
import '../components/transaction_item_widget.dart';
import '../constants/colors.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Total Balance",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                    const Text(
                      "Rp 5.020.264.363",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transaction Stats",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          "Nov - Feb",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const CustomLineChartWidget(),
              const SizedBox(height: 34),
              const Text(
                "Transaction History",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const TransactionItemWidget(
                icon: Icons.shopping_bag,
                title: "Shopping",
                date: "Today, 10:00 AM",
                amount: "-Rp 5.500.000",
              ),
              const SizedBox(height: 20),
              const TransactionItemWidget(
                icon: Icons.fastfood,
                title: "Food",
                date: "Yesterday, 12:00 PM",
                amount: "-Rp 800.000",
              ),
              const SizedBox(height: 20),
              const TransactionItemWidget(
                icon: Icons.shopping_bag,
                title: "Shopping",
                date: "Yesterday, 10:00 AM",
                amount: "-Rp 2.500.000",
              ),
              const SizedBox(height: 120),
            ],
          ),
        ),
      ),
    );
  }
}
