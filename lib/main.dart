import 'package:coconutlab_test/screens/order_tracking_page.dart';
import 'package:coconutlab_test/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.themeData,
      home: const OrderTrackingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
