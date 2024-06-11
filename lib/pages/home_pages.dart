import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProductInfo {
  final String name;
  final int price;

  ProductInfo(this.name, this.price);
}

final product = [
  ProductInfo('Mouse', 3),
  ProductInfo('Keyboard', 5),
  ProductInfo('Camera', 8),
  ProductInfo('Speaker', 4),
  ProductInfo('Ipad', 1000)
];

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int _curentProductIndex = 0;
  int? _inputtedPrice;
  String _result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 30)),
            Text(product[_curentProductIndex].name),
            const Padding(padding: EdgeInsets.only(top: 10)),
            SizedBox(
              width: 300,
              child: TextField(
                key: const Key('priceInput'),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                onChanged: (value) {
                  _inputtedPrice = int.tryParse(value);
                },
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _result = _inputtedPrice == product[_curentProductIndex].price
                      ? 'pass'
                      : 'false';
                });
              },
              child: const Text('Check'),
            ),
            Visibility(
              visible: _result.isNotEmpty,
              child: Text(
                _result,
                key: const Key('result'),
              ),
            ),
            Visibility(
              visible: _result.isNotEmpty,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _result = '';
                    if (_curentProductIndex < 4) {
                      _curentProductIndex++;
                    }
                  });
                },
                child: const Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
