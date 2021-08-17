import 'package:crypto_ticker/widgets/coin_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:crypto_ticker/constants.dart';

typedef Null ItemSelectedCallback(String value);

class CoinList extends StatefulWidget {
  final int count = kCryptoList.length;
  final ItemSelectedCallback onItemSelected;

  CoinList({required this.onItemSelected});

  @override
  _CoinListState createState() => _CoinListState();
}

class _CoinListState extends State<CoinList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.count,
      itemBuilder: (context, position) {
        String coin = kCryptoList[position];
        return CoinListTile(
          coin: coin,
          onTap: () {
            widget.onItemSelected(coin);
          },
        );
      },
    );
  }
}
