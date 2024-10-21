import 'package:flutter/material.dart';

class BookShipmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Shipment'),
        backgroundColor: Color(0xFFD0B49F), // Match the app's color scheme
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Book Your Shipment',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF523A28), // Match the app's text color
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Recipient Name',
                labelStyle: TextStyle(color: Color(0xFF523A28)), // Match the app's text color
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Address',
                labelStyle: TextStyle(color: Color(0xFF523A28)), // Match the app's text color
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Package Details',
                labelStyle: TextStyle(color: Color(0xFF523A28)), // Match the app's text color
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add booking logic here
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Shipment Booked!')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFA47551), // Match the app's button color
                foregroundColor: Colors.white, // Match the app's button text color
              ),
              child: Text('Confirm Booking'),
            ),
          ],
        ),
      ),
    );
  }
}