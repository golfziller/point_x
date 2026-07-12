import 'package:flutter/material.dart';

class CardMock extends StatelessWidget {
  const CardMock({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('Item number  as title'),
        subtitle: const Text('Subtitle here Subtitle here Subtitle here'),
        leading: const Icon(Icons.ac_unit),
        trailing: Text('10.00'),
      ),
    );
  }
}
