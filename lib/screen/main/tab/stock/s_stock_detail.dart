import 'package:flutter/material.dart';

class StockDetailPage extends StatefulWidget {
  const StockDetailPage({required this.stockName, super.key});

  final String stockName;
  @override
  State<StockDetailPage> createState() => _StockDetailPageState();
}

class _StockDetailPageState extends State<StockDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.stockName),
      ),
    );
  }
}
