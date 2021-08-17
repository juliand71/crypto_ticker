import 'package:crypto_ticker/services/crypto_service.dart';
import 'package:flutter/material.dart';

class CoinListTile extends StatefulWidget {
  CoinListTile({required this.coin, required this.onTap});

  final String coin;
  final VoidCallback onTap;
  @override
  _CoinListTileState createState() => _CoinListTileState();
}

class _CoinListTileState extends State<CoinListTile> {
  double coinPrice = 0.0;

  @override
  void initState() {
    super.initState();
    getCoinPrice(widget.coin);
  }

  void getCoinPrice(String coin) async {
    var coinData = await CryptoService.getCoinData(widget.coin);
    setState(() {
      coinPrice = coinData['rate'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
      },
      child: Container(
        margin: EdgeInsets.all(4.0),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(widget.coin),
            Text('\$${coinPrice.toStringAsFixed(2)}'),
            IconButton(
              onPressed: () {
                getCoinPrice(widget.coin);
              },
              icon: Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
