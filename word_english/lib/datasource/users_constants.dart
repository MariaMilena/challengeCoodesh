const String kDATABASE_NAME = 'word_english_db';

const String kUSERS_TABLE_NAME = 'users';
const String kUSERS_COLUMN_ID = 'id';
const String kUSERS_COLUMN_NAME = 'nome';
const String kUSERS_COLUMN_SENHA = 'senha';

const String kCREATE_USERS_TABLE_SCRIPT = '''
  CREATE TABLE $kUSERS_TABLE_NAME
  (
    $kUSERS_COLUMN_ID INTEGER PRIMARY KEY,
    $kUSERS_COLUMN_NAME TEXT,
    $kUSERS_COLUMN_SENHA TEXT
  )
''';
