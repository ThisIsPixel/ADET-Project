import 'package:flutter/material.dart';

class DeliveredPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivered Shipments'),
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF523A28), // Match the theme color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivered Shipments',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF523A28)), // Match text color
            ),
            SizedBox(height: 20),
            // Placeholder for delivered shipments
            Text(
              'No shipments delivered yet',
              style: TextStyle(fontSize: 16, color: Color(0xFF523A28)), // Match text color
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to refresh the list of shipments
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Delivered shipments refreshed')),
                );
              },
              child: Text('Refresh'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFA47551), // Match button color
                foregroundColor: Colors.white, // Text color
              ),
            ),
            SizedBox(height: 20),
            // You can add a list of delivered shipments here
          ],
        ),
      ),
    );
  }
}