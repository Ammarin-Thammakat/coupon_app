import 'package:flutter/material.dart';
import 'package:coupon_app/qr_code_scanner.dart';
import 'package:coupon_app/scan_history_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('QR Management')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QRCodeScanner()));
            },
            child: Text('Scan QR Code'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScanHistoryPage()));
            },
            child: Text('View Scan History'),
          ),
        ],
      ),
    );
  }
}
