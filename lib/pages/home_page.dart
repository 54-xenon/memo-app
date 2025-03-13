import 'package:flutter/material.dart';
import 'package:memoapp/util/memo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Memo"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.yellow[300],
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: [
          // ここにメモのタイトルを表示するものを作成する
          MemoTile(
            memoName: "first memo",
            memoContents: "チンチン座みゅらい垢かカカカカかかカカかかかかかかかかかk",
          ),
          MemoTile(
            memoName: "first memo",
            memoContents: "チンチン座みゅらい垢かカカカカかかカカかかかかかかかかかk",
          ),
          MemoTile(
            memoName: "first memo",
            memoContents: "チンチン座みゅらい垢かカカカカかかカカかかかかかかかかかk",
          ),
        ],
      ),
    );
  }
}