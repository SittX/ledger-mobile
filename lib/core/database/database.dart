import 'package:ledger_mobile/core/database/migrations/v1/currency_code_insert.dart';
import 'package:ledger_mobile/core/database/migrations/v1/database_table.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseService {
  DatabaseService._internal();

  static Future<Database>? _databaseFuture;

  static Future<Database> get database {
    _databaseFuture ??= _initDatabase();
    return _databaseFuture!;
  }

  static Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, "ledger_data.db");

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
            $accountTable
            $transactionTable
            $currencyTable
            $currencyInserts
        ''');
      },
    );
  }
}
