import 'package:flutter/material.dart';
import 'package:memoapp/util/my_button.dart';
class DaialogBox extends StatelessWidget {
  final titleController;
  final contentController;
  VoidCallback onSave;
  VoidCallback onCancel;
  DaialogBox({
    super.key,
    required this.titleController,
    required this.contentController,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: SizedBox(
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // title Textfild
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "ここにタイトルを入力してください..."
              ),
            ),
            SizedBox(height: 8),
            // content textFild
            TextField(
              // 行数の上限を指定しない
              maxLines: null, 
              textAlignVertical: TextAlignVertical.top,
              controller: contentController,
              decoration: InputDecoration(
                hintText: "ここにメモを入力してください..."
              ),
            ),
            // button -> sabe button + cancel button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Sabe button
                MyButton(text: "Save", onPressed: onSave),
                // cancel button
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}