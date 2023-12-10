import 'package:flutter/material.dart';

class ReceiptPage extends StatelessWidget {
  final String totalPrice;

  const ReceiptPage({Key? key, required this.totalPrice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipt'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Thank you for your purchase!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                'Total Amount: \₱$totalPrice',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Navigate back to the cart page
                  Navigator.pop(context);
                },
                child: Text('Back to Cart'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
