import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

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

// class HYHomeContent extends StatefulWidget {
//   final String message = 'Hello World';
//   const HYHomeContent({super.key});

//   @override
//   State<StatefulWidget> createState() => HYHomeContentState();
// }

// class HYHomeContentState extends State<HYHomeContent> {
//   int _counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           _getButtons(),
//           Text('当前计数:$_counter', style: const TextStyle(fontSize: 25)),
//           // 传递的信息 widget.message
//           Text('传递的信息:${widget.message}', style: const TextStyle(fontSize: 25))
//         ],
//       ),
//     ); // 返回一个空容器
//   }

//   Widget _getButtons() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         ElevatedButton(
//           onPressed: () {
//             logger.i('按钮被点击');
//             setState(() {
//               _counter++;
//             });
//           },
//           child: const Text(
//             '点击增加',
//             style: TextStyle(fontSize: 16),
//           ),
//         ),
//         ElevatedButton(
//           onPressed: () {
//             logger.i('按钮被点击');
//             setState(() {
//               _counter--;
//             });
//           },
//           child: const Text(
//             '点击减少',
//             style: TextStyle(fontSize: 16),
//           ),
//         ),
//       ],
//     );
//   }
// }

var logger = Logger();

// statefullwidget 生命周期
class HYHomeContent extends StatefulWidget {
  const HYHomeContent({super.key});

  @override
  State<StatefulWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HYHomeContent> {
  int _counter = 0;
  @override
  void initState() {
    // 初始化状态 必须调用 super
    super.initState();
    logger.i('initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    logger.i('didChangeDependencies() called');
  }

  @override
  Widget build(BuildContext context) {
    logger.i('build() called');
    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            logger.i('按钮被点击');
            setState(() {
              _counter++;
            });
          },
          child: const Text(
            '点击增加',
            style: TextStyle(fontSize: 16),
          ),
        ),
        Text('当前计数:$_counter', style: const TextStyle(fontSize: 25)),
      ],
    );
  }

  @override
  void didUpdateWidget(covariant HYHomeContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    logger.i('更新了吗');
  }

  @override
  void deactivate() {
    super.deactivate();
    logger.i('deactivate() called');
  }

  @override
  void dispose() {
    super.dispose();
    logger.i('dispose() called');
  }
}
