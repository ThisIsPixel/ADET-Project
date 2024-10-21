import 'package:flutter/material.dart';
import 'track_shipment_page.dart';
import 'book_shipment_page.dart';
import 'in_transit_page.dart';
import 'delivered_page.dart';
import 'pending_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Speedy Parcel'),
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF523A28),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              color: Color(0xFFA47551), // Medium brown
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Check the status of your deliveries.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                color: Color(0xFFD0B49F),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery Status',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF523A28),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => InTransitPage()), // Navigate to In Transit Page
                              );
                            },
                            child: Column(
                              children: [
                                Icon(Icons.local_shipping, size: 40, color: Color(0xFF523A28)),
                                SizedBox(height: 5),
                                Text('In Transit', style: TextStyle(color: Color(0xFF523A28))),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DeliveredPage()), // Navigate to Delivered Page
                              );
                            },
                            child: Column(
                              children: [
                                Icon(Icons.check_circle_outline, size: 40, color: Colors.green),
                                SizedBox(height: 5),
                                Text('Delivered', style: TextStyle(color: Color(0xFF523A28))),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => PendingPage()),
                              );
                            },
                            child: Column(
                              children: [
                                Icon(Icons.timer, size: 40, color: Color(0xFF523A28)),
                                SizedBox(height: 5),
                                Text('Pending', style: TextStyle(color: Color(0xFF523A28))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recent Shipments',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF523A28),
                    ),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: Icon(Icons.local_shipping, color: Color(0xFF523A28)),
                    title: Text('Shipment #12345'),
                    subtitle: Text('In Transit'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: Icon(Icons.local_shipping, color: Colors.green),
                    title: Text('Shipment #12344'),
                    subtitle: Text('Delivered'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BookShipmentPage()), // Navigate to the new page
                      );
                    },
                    child: Text('Book Shipment'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFA47551), // Button color
                      foregroundColor: Colors.white, // Text color
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Navigate to Tracking Shipment Page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TrackingShipmentPage()),
                      );
                    },
                    icon: Icon(Icons.search),
                    label: Text('Track Shipment'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFA47551),
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}