import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
    static final DatabaseHelper instance = DatabaseHelper._init();
    static Database? _database;

    DatabaseHelper._init();

    Future<Database> get database async {
        if (_database != null) return _database!;
        _database =  await _initDB();
        return _database!;
    }

    Future<Database> _initDB() async {
        String path = join(await getDatabasesPath(), 'memo.db');
        return await openDatabase(
            path,
            version: 1,
            onCreate: _createDB,
        );
    }
    // テーブル作成
    Future<void> _createDB(Database db, int version) async {
        await db.execute('''
            CREATE TABLE memos(
            id INTEGER PRIMSRY LEY AUTOINCREMENT,
            memoName TEXT NOT NULL,
            memoContent TEXT NOT NULL  
          )
        ''');
    }

    // add a a memo(dymamic型も文字列で保存する)
    Future<void> inertMemo(Map<String, dynamic> memo) async {
        final ab = await database;
        await ab.insert(
            'memos',
            {
                'memoName': memo["memoName"],
                'memoContent': memo['memoContent'].toString(),
            },
        );
    }

    // get a memo (メモを取得する)
    Future<List<Map<String, dynamic>>> getMemos() async {
        final db = await database;
        final List<Map<String, dynamic>> maps = await db.query('memos');

        return List.generate(maps.length, (i) {
            return {
                'memoName': maps[i]['memoname'],
                'memoContent': _parseContent(maps[i]['memoContent']),
            };
        });
    }

    // 文字列を元に元の方に戻す関数
    dynamic _parseContent(String content) {
        if (content == 'true' || content == 'false') {
            return content == 'true';
        } else if (int.tryParse(content) != null) {
            return content;
        }
        // 処理した文字列を戻り値として戻す
        return content;
    }

    // delete a memo
    Future<void> deleteMemo(int, id) async {
        final db = await database;
        await db.delete('memos', where: 'id = ?', whereArgs: [id]);
    }
}