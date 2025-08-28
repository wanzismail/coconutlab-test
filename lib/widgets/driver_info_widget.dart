import 'package:coconutlab_test/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DriverInfoWidget extends StatelessWidget {
  const DriverInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: AppTheme.lightPurple,
          child: ClipOval(
            child: Image.asset(
              'assets/icons/ic_boy.png',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 16),
        Text('Dave Miye', style: textTheme.titleMedium),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset('assets/icons/ic_message.svg', width: 24),
        ),
        const SizedBox(width: 20),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset('assets/icons/ic_phone.svg', width: 24),
        ),
      ],
    );
  }
}