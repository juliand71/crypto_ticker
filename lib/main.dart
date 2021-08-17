import 'package:crypto_ticker/pages/coin_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CryptoTicker',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CryptoTix'),
        ),
        body: CoinListPage(),
      ),
    );
  }
}
