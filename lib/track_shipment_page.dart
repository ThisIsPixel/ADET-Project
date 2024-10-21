import 'package:flutter/material.dart';

class TrackingShipmentPage extends StatefulWidget {
  @override
  _TrackingShipmentPageState createState() => _TrackingShipmentPageState();
}

class _TrackingShipmentPageState extends State<TrackingShipmentPage> {
  final _trackingController = TextEditingController();
  String? _shipmentStatus;

  // Mock function to simulate shipment tracking
  void _trackShipment() {
    String trackingNumber = _trackingController.text;

    // Simulate different shipment statuses based on input
    setState(() {
      if (trackingNumber == "12345") {
        _shipmentStatus = "Shipment is on the way. Expected delivery: 2 days.";
      } else if (trackingNumber == "67890") {
        _shipmentStatus = "Shipment delivered on October 15, 2024.";
      } else {
        _shipmentStatus = "Invalid tracking number. Please try again.";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track Your Shipment'),
        backgroundColor: Color(0xFF523A28),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter your shipment tracking number:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _trackingController,
              decoration: InputDecoration(
                labelText: 'Tracking Number',
                border: OutlineInputBorder(),
                fillColor: Color(0xFFE4D4C8),
                filled: true,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _trackShipment,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF523A28),
                foregroundColor: Colors.white,
              ),
              child: Text('Track Shipment'),
            ),
            SizedBox(height: 30),
            if (_shipmentStatus != null) ...[
              Text(
                'Shipment Status:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                _shipmentStatus!,
                style: TextStyle(fontSize: 16, color: Colors.blueGrey),
              ),
            ],
          ],
        ),
      ),
    );
  }
}