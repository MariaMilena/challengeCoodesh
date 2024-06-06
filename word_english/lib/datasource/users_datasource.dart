import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:word_english/datasource/users_constants.dart';
import 'package:word_english/model/user_model.dart';

class UsersDatasource {
  Future<Database> _getDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), kDATABASE_NAME),
      onCreate: (db, version) async {
        await db.execute(kCREATE_USERS_TABLE_SCRIPT);
      },
      version: 1
    );
  }

  Future create(UserModel user) async {
    try {
      final Database db = await _getDatabase();

      user.id =
          await db.rawInsert('''
             INSERT INTO $kUSERS_TABLE_NAME (
             $kUSERS_COLUMN_ID, $kUSERS_COLUMN_NAME, $kUSERS_COLUMN_SENHA)
             VALUES(
             '${user.id}', '${user.nome}', '${user.senha}')
          ''');
    } catch(ex) {
      return;
    }
  }
}