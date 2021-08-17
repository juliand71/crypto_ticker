import 'package:crypto_ticker/widgets/coin_detail.dart';
import 'package:crypto_ticker/widgets/coin_list.dart';
import 'package:crypto_ticker/widgets/coin_list_tile.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class CoinListPage extends StatefulWidget {
  @override
  _CoinListPageState createState() => _CoinListPageState();
}

class _CoinListPageState extends State<CoinListPage> {
  String selectedCoin = '';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CoinList(
            onItemSelected: (coin) {
              setState(() {
                selectedCoin = coin;
              });
            },
          ),
        ),
        Expanded(
          child: CoinDetail(
            coin: selectedCoin,
          ),
        )
      ],
    );
  }
}
