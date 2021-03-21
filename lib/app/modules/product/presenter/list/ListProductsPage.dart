import 'package:flutter/material.dart';

class ListProductsPage extends StatefulWidget {
  @override
  _ListProductsPageState createState() => _ListProductsPageState();
}

class _ListProductsPageState extends State<ListProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('lSIT')),
      body: Column(
        children: [
          Expanded(child: ListView.builder(itemBuilder: (_, id) {
            return ListTile();
          })),
        ],
      ),
    );
  }
}
