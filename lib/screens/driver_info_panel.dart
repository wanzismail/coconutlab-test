import 'package:coconutlab_test/widgets/action_buttons.dart';
import 'package:coconutlab_test/widgets/car_info_widget.dart';
import 'package:coconutlab_test/widgets/driver_info_widget.dart';
import 'package:coconutlab_test/widgets/trip_info_widget.dart';
import 'package:flutter/material.dart';

class DriverInfoPanel extends StatelessWidget {
  const DriverInfoPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        children: [
          CarInfoWidget(),
          SizedBox(height: 16),
          DriverInfoWidget(),
          SizedBox(height: 24),
          TripInfoWidget(),
          SizedBox(height: 32),
          ActionButtons(),
        ],
      ),
    );
  }
}
