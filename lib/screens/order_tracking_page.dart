import 'package:coconutlab_test/painter/triangle.dart';
import 'package:coconutlab_test/screens/driver_info_panel.dart';
import 'package:coconutlab_test/theme.dart';
import 'package:flutter/material.dart';

class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({super.key});

  @override
  State<OrderTrackingPage> createState() => _OrderTrackingPageState();
}

class _OrderTrackingPageState extends State<OrderTrackingPage> {
  bool _isNotificationVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildMapBackground(),
          _buildBackButton(),
          _buildCarMarker(context),
          if (_isNotificationVisible) _buildNotificationBar(context),
          _buildDraggableSheet(),
        ],
      ),
    );
  }

  Positioned _buildNotificationBar(BuildContext context) {
    return Positioned(
      left: 16,
      right: 16,
      bottom: 560,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          color: AppTheme.primaryColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            const Spacer(),
            Row(
              children: [
                const Icon(Icons.notifications_active, color: Colors.white),
                const SizedBox(width: 10),
                Text(
                  'Hurray! Your Driver as Arrived',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.close, color: Colors.white),
              onPressed: () {
                setState(() {
                  _isNotificationVisible = false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMapBackground() {
    return Image.asset(
      'assets/images/bg_map.png',
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }

  Widget _buildBackButton() {
    return Positioned(
      top: 50,
      left: 20,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _buildCarMarker(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.15,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: AppTheme.darkGrey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'Arrived',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CustomPaint(
            size: const Size(20, 10),
            painter: TrianglePainter(color: AppTheme.darkGrey),
          ),
          Image.asset('assets/icons/ic_car.png', width: 60),
        ],
      ),
    );
  }

  Widget _buildDraggableSheet() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final desiredPanelHeight = 550;
        final screenHeight = constraints.maxHeight;
        final initialChildSize = (desiredPanelHeight / screenHeight).clamp(
          0.0,
          1.0,
        );

        return DraggableScrollableSheet(
          initialChildSize: initialChildSize,
          minChildSize: initialChildSize,
          maxChildSize: 0.85,
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Handler bar
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Container(
                      width: 40,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: const DriverInfoPanel(),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
