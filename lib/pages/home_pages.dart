import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 30)),
            const Text('Bluetooth mouse'),
            const Padding(padding: EdgeInsets.only(top: 10)),
            SizedBox(
              width: 300,
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton(
              onPressed: () {},
              child: Text('Check'),
            )
          ],
        ),
      ),
    );
  }
}
