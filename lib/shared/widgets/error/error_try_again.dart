import 'package:flutter/material.dart';
import 'package:point_x/shared/widgets/common/ui_helper.dart';

class ErrorTryAgain extends StatelessWidget {
  final String errorMessage;
  final VoidCallback onTryAgain;

  const ErrorTryAgain({
    super.key,
    this.errorMessage = 'Something went wrong. Please try again later.',
    required this.onTryAgain,
  });

  @override
  Widget build(BuildContext context) {
    final double padding = 32;
    return Center(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryFixed,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.error_outline_rounded,
                size: 48,
                color: Theme.of(context).colorScheme.primary, // สีหลักแบรนด์
              ),
            ),

            verticalSpaceMedium,

            Text(
              'Oops! Something went wrong',
              style: Theme.of(context).textTheme.titleLarge,
            ),

            verticalSpaceTiny,
            Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),

            verticalSpaceLarge,

            SizedBox(
              width: 160,
              child: ElevatedButton(
                onPressed: onTryAgain,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.refresh_rounded, size: 20),
                    horizontalSpaceTiny,
                    Text(
                      'Try Again',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
