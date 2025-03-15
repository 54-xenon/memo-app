import 'package:flutter/material.dart';
import 'package:memoapp/util/my_button.dart';

class AddPage extends StatefulWidget {
  VoidCallback onSave;
  VoidCallback onCancel;
   AddPage({
    super.key,
    required this.onSave,
    required this.onCancel,
  });

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  dynamic _titleText = "";
  dynamic _contentText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[300],
      appBar: AppBar(
        title: const Text("新規メモ"),
        backgroundColor: Colors.yellow[300],
        // Appbarにボタンをつけて保存する・しないを実行する
        actions: [
          MyButton(text: "Cancel", onPressed: () {}),
          MyButton(text: "Save", onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          // title textFild
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "ここにタイトルを入力...",
            ),
            onChanged: (dynamic value) {
              _titleText = value;
            },
          ),
          SizedBox(height: 8),
          // content Textfild
          Expanded(
            child: TextField(
              onChanged: (dynamic value) {
                _contentText = value;
              },
              maxLines: null,
              textAlignVertical: TextAlignVertical.top,
              expands: true,
              decoration: InputDecoration(
                hintText: "ここにメモを入力する"
              ),
            ),
          )
        ],
      ),
    );
  }
}