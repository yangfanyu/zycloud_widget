import 'package:hive/hive.dart';
import 'package:shelf_easy/shelf_easy.dart';

///
///数据存储：https://pub.dev/packages/hive
///
class ZyStorage {
  ///Hive数据库实例
  static BoxCollection? _database;

  ///Hive数据表集合
  static Map<String, CollectionBox>? _databaseTables;

  ///Hive默认数据表
  static CollectionBox? _defaultTableBox;

  ///开启数据库
  static Future<void> openDB({required String db, required String defaultTable, Set<String> otherTables = const {}, String? diskPath, String? secret}) async {
    if (_database != null) throw ('Already exists database instance, please call ZyStorage.closeDB() to release the old.');
    //必须32bytes长度，所以采用md5来生成密钥
    _database = await BoxCollection.open(db, {defaultTable, ...otherTables}, path: diskPath, key: secret == null ? null : HiveAesCipher(EasySecurity.getMd5(secret).codeUnits));
    _databaseTables = {};
    _defaultTableBox = _databaseTables![defaultTable] = await _database!.openBox(defaultTable);
    for (var table in otherTables) {
      _databaseTables![table] = await _database!.openBox(table);
    }
  }

  ///打开数据表
  static Future<void> openTable(String table) async {
    _databaseTables![table] = await _database!.openBox(table);
  }

  ///关闭数据库
  static void closeDB() {
    _database!.close();
    _database = null;
    _databaseTables = null;
    _defaultTableBox = null;
  }

  ///在默认表写入单个数据
  static Future<void> setOne({required String key, required dynamic value}) => _defaultTableBox!.put(key, value);

  ///在默认表读取单个数据
  static Future<dynamic> getOne({required String key}) => _defaultTableBox!.get(key);

  ///在默认表读取多个数据
  static Future<List<dynamic>> getMany({required List<String> keys}) => _defaultTableBox!.getAll(keys);

  ///在默认表读取全部的键
  static Future<List<String>> getAllKeys() => _defaultTableBox!.getAllKeys();

  ///在默认表读取全部数据
  static Future<Map<String, dynamic>> getAllValues() => _defaultTableBox!.getAllValues();

  ///在默认表删除单个数据
  static Future<void> deleteOne({required String key}) => _defaultTableBox!.delete(key);

  ///在默认表删除多个数据
  static Future<void> deleteMany({required List<String> keys}) => _defaultTableBox!.deleteAll(keys);

  ///在默认表删除全部数据
  static Future<void> deleteAll() => _defaultTableBox!.clear();

  ///在指定表写入单个数据
  static Future<void> setOneInTable(String table, {required String key, required dynamic value}) => _databaseTables![table]!.put(key, value);

  ///在指定表读取单个数据
  static Future<dynamic> getOneInTable(String table, {required String key}) => _databaseTables![table]!.get(key);

  ///在指定表读取多个数据
  static Future<List<dynamic>> getManyInTable(String table, {required List<String> keys}) => _databaseTables![table]!.getAll(keys);

  ///在指定表读取全部的键
  static Future<List<String>> getAllKeysInTable(String table) => _databaseTables![table]!.getAllKeys();

  ///在指定表读取全部数据
  static Future<Map<String, dynamic>> getAllValuesInTable(String table) => _databaseTables![table]!.getAllValues();

  ///在指定表删除单个数据
  static Future<void> deleteOneInTable(String table, {required String key}) => _databaseTables![table]!.delete(key);

  ///在指定表删除多个数据
  static Future<void> deleteManyInTable(String table, {required List<String> keys}) => _databaseTables![table]!.deleteAll(keys);

  ///在指定表删除全部数据
  static Future<void> deleteAllInTable(String table) => _databaseTables![table]!.clear();
}
