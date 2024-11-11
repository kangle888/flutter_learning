import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('商品列表'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: const HYHomeContent(), // 渲染 HYHomeContent 组件
    );
  }
}

class HYHomeContent extends StatelessWidget {
  const HYHomeContent({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        HYHomeProductItem(
          title: 'Apple1',
          desc: 'Macbook1',
          imageUrl: 'http://10.1.2.227:11000/image/discount_card_bgc.png',
        ),
        SizedBox(height: 6),
        HYHomeProductItem(
          title: 'Apple1',
          desc: 'Macbook1',
          imageUrl: 'http://10.1.2.227:11000/image/discount_card_bgc.png',
        ),
        SizedBox(height: 6),
        HYHomeProductItem(
          title: 'Apple1',
          desc: 'Macbook1',
          imageUrl: 'http://10.1.2.227:11000/image/discount_card_bgc.png',
        ),
      ],
    );
  }
}

class HYHomeProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageUrl;
  const HYHomeProductItem(
      {super.key,
      required this.title,
      required this.desc,
      required this.imageUrl});
  final style1 = const TextStyle(fontSize: 25, color: Colors.orange);
  final style2 = const TextStyle(fontSize: 25, color: Colors.green);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          width: 5,
          color: const Color.fromARGB(255, 99, 80, 80),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: style1,
          ),
          const SizedBox(height: 8),
          Text(desc, style: style2),
          const SizedBox(height: 8),
          Image.network(imageUrl),
        ],
      ),
    );
  }
}
