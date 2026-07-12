import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1. เลือกใช้ไอคอนที่เหมาะสม
            Icon(
              Icons.search_off_rounded,
              size: 72,
              color: Theme.of(
                context,
              ).colorScheme.onSecondaryFixed.withValues(alpha: 0.3),
            ),
            const SizedBox(height: 16),

            // 2. ข้อความหัวข้อหลัก
            const Text(
              'Product Not Found',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2D3142),
              ),
            ),
            const SizedBox(height: 8),

            // 3. ข้อความแนะนำผู้ใช้ (UX Microcopy)
            const Text(
              'We couldn\'t find any products matching your search. Please try check your spelling or try another keyword.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black45,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
