import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _type = "偶数";

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter % 2 == 0) {
        _type = "偶数";
      } else {
        _type = "奇数";
      }
      print("hello world!");
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          children: const [
            Icon(Icons.create),
            Text("初タイトル作成"),
          ],
        ),
      ),
      // body: Column(children: [
      //   const Text("hello world"),
      //   const Text("こんにちは世界"),
      //   TextButton(
      //     onPressed: () => {print("pushed Button")},
      //     child: const Text("テキストボタン"),
      //   ),
      //   Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [
      //       Icon(
      //         Icons.favorite,
      //         color: Colors.pink,
      //         size: 24.0,
      //       ),
      //       Icon(
      //         Icons.audiotrack,
      //         color: Colors.green,
      //         size: 30.0,
      //       ),
      //       Icon(
      //         Icons.beach_access,
      //         color: Colors.blue,
      //         size: 36.0,
      //       ),
      //       Icon(
      //         Icons.access_alarm,
      //         color: Colors.grey,
      //         size: 60.0,
      //       ),
      //     ],
      //   ),
      // ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            if (_counter % 2 == 0)
              Text('$_type', style: TextStyle(fontSize: 20, color: Colors.red))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
      drawer: const Drawer(child: Center(child: Text("Drawer"))),
      endDrawer: const Drawer(child: Center(child: Text("EndDrawer"))),
    );
  }
}
