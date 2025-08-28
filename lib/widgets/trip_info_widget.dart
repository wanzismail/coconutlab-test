import 'package:coconutlab_test/theme.dart';
import 'package:flutter/material.dart';

class TripInfoWidget extends StatelessWidget {
  const TripInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.lightPurple,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFB8ADDA), width: 2),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppTheme.primaryColor, width: 3),
                  color: Colors.transparent,
                ),
              ),
              Container(width: 3, height: 16, color: AppTheme.primaryColor),
              ...List.generate(
                3,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  height: 3,
                  width: 3,
                  color: Colors.grey.shade400,
                ),
              ),
              Container(width: 3, height: 16, color: AppTheme.primaryColor),
              Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: AppTheme.primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '18A Topsia avenue Lekki',
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12), // Jarak antar teks sama dengan dot
                Text('23 mins trip', style: textTheme.bodySmall),
                const SizedBox(height: 12), // Jarak antar teks sama dengan dot
                Text(
                  'Block 5 Phase 12 Chevron hotels',
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}