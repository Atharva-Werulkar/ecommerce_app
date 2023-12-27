import 'package:flutter/material.dart';

class SupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D182A),
      appBar: AppBar(
        title: Text(
          'Support',
          style: TextStyle(
            fontFamily: 'CircularStd-Bold.ttf',
          ),
        ),
      ),
      body: Center(
        child: Text('Support Screen'),
      ),
    );
  }
}
