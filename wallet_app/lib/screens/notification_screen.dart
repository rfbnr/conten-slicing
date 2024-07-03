import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(
                "Notifications",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Today",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  NotificationItem(
                    title: 'Transaction Debit',
                    message: 'You spent Rp 5.000.000 from John Doe',
                    time: '1 hours ago',
                    isSpend: true,
                  ),
                  SizedBox(height: 16),
                  NotificationItem(
                    title: 'Transaction Debit',
                    message: 'You received Rp 8.000.000 from John Doe',
                    time: '4 hours ago',
                    isSpend: false,
                  ),
                  SizedBox(height: 16),
                  NotificationItem(
                    title: 'Transaction Debit',
                    message: 'You spent Rp 3.000.000 from John Doe',
                    time: '7 hours ago',
                    isSpend: true,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Yesterday",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  NotificationItem(
                    title: 'Transaction Debit',
                    message: 'You received Rp 9.000.000 from John Doe',
                    time: '29/06/2024\n14:00:20',
                    isSpend: false,
                  ),
                  SizedBox(height: 16),
                  NotificationItem(
                    title: 'Transaction Debit',
                    message: 'You spent Rp 2.000.000 from John Doe',
                    time: '29/06/2024\n19:15:20',
                    isSpend: true,
                  ),
                  SizedBox(height: 16),
                  NotificationItem(
                    title: 'Transaction Debit',
                    message: 'You received Rp 5.000.000 from John Doe',
                    time: '29/06/2024\n21:30:00',
                    isSpend: false,
                  ),
                ],
              ),
              SizedBox(height: 120),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.title,
    required this.message,
    required this.time,
    required this.isSpend,
  });

  final String title;
  final String message;
  final String time;
  final bool isSpend;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            blurRadius: 40,
            spreadRadius: 10,
            color: Colors.grey.withOpacity(0.3),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        horizontalTitleGap: 20,
        leading: Icon(
          isSpend ? Icons.outbond_outlined : Icons.move_to_inbox,
          color: isSpend ? Colors.red : Colors.green,
          size: 30,
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          message,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        trailing: Text(
          time,
          textAlign: TextAlign.right,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
