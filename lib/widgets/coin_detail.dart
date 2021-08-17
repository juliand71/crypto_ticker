import 'package:flutter/material.dart';

class CoinDetail extends StatefulWidget {
  final String coin;
  CoinDetail({required this.coin});

  @override
  _CoinDetailState createState() => _CoinDetailState();
}

class _CoinDetailState extends State<CoinDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Selected ${widget.coin}'),
    );
  }
}
