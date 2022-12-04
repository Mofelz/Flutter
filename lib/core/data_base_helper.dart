import 'dart:io' show Directory, Platform;
import 'package:flutter_application_1/common/data_base_request.dart';
import 'package:flutter_application_1/data/model/section.dart';
import 'package:flutter_application_1/data/model/klient.dart';
import 'package:flutter_application_1/data/model/role.dart';
import 'package:flutter_application_1/data/model/sklad.dart';
import 'package:flutter_application_1/data/model/post.dart';
import 'package:flutter_application_1/data/model/tovar.dart';
import 'package:flutter_application_1/data/model/tovarcategory.dart';
import 'package:flutter_application_1/data/model/provider.dart';
import 'package:flutter_application_1/data/model/user.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DataBaseHelper{
  static final DataBaseHelper instance = DataBaseHelper._instance();
  DataBaseHelper._instance();
  late final Directory _appDocumentDirectory;
  late final String _pathDb;
  late final Database database;
  int _version = 1 ;

  Future<void> init() async{
    _appDocumentDirectory = 
        await path_provider.getApplicationDocumentsDirectory();
    _pathDb = join(_appDocumentDirectory.path, 'booksstore.db');
    if(Platform.isWindows || Platform.isMacOS || Platform.isLinux){
       sqfliteFfiInit();
      Database dbase = await databaseFactoryFfi.openDatabase(_pathDb, options: OpenDatabaseOptions(
          onUpgrade: (db, oldVersion, newVersion) => onUpdateTable(db),
          version: _version,
          onCreate: (db, version) async {
            await onCreateTable(db);
          }
        )
      );
    }
    else{
      database = await openDatabase(
        _pathDb,
        version: _version,
        onUpgrade: ((db, oldVersion, newVersion) => onUpdateTable(db)),
        onCreate: (db, version) async {
          await onCreateTable(db);
        }
      );
    }
  }


  Future<void> onUpdateTable(Database db) async{
    var tables = await db.rawQuery('SELECT name FROM sqlite_master');
    for(var table in DataBaseRequest.tableList.reversed){
      if(tables.where((element) => element['name'] == table).isNotEmpty){
        await db.execute(DataBaseRequest.deleteTable(table));
      }
      
    }

    for (var element in DataBaseRequest.createTableList){
        await db.execute(element);
      }

      await onInitTable(db);

  }


  Future<void> onCreateTable(Database db) async{
      for (var element in DataBaseRequest.createTableList){
        await db.execute(element);
      }

      await onInitTable(db);
  }

  Future<void> onInitTable(Database db) async{
    try{
      db.insert(DataBaseRequest.tableRole,Role(role: 'Администратор', nameRole: '').toMap());
      db.insert(DataBaseRequest.tableRole,Role(role: 'Грузчик', nameRole: '').toMap());
      db.insert(DataBaseRequest.tableRole,Role(role: 'Упаковщик', nameRole: '').toMap());
      db.insert(DataBaseRequest.tableRole,Role(role: 'Сортировщик', nameRole: '').toMap());

      db.insert(DataBaseRequest.tablePost,Post(postName: 'Грузчик').toMap());
      db.insert(DataBaseRequest.tablePost,Post(postName: 'Упаковщик').toMap());
      db.insert(DataBaseRequest.tablePost,Post(postName: 'Сортировщик').toMap());
      db.insert(DataBaseRequest.tablePost,Post(postName: 'Администратор').toMap());

      db.insert(DataBaseRequest.tableTovarCategory,TovarCategory(typeName: 'Книга').toMap());
      db.insert(DataBaseRequest.tableTovarCategory,TovarCategory(typeName: 'Крутая книга').toMap());
      db.insert(DataBaseRequest.tableTovarCategory,TovarCategory(typeName: 'Ультрамегачтототам крутая книга').toMap());

      db.insert(DataBaseRequest.tableProvider,Provider(providerName: 'Организация ДВвЦиС', address: 'Зачетаная улица, дом 777', phoneNumber: '8-800-555-35-35').toMap());
      db.insert(DataBaseRequest.tableProvider,Provider(providerName: 'Организация ВанШэн', address: 'Похоронная улица, дом 666', phoneNumber: '8-999-999-69-69').toMap());

      db.insert(DataBaseRequest.tableKlient,Klient(klientName: 'Читай-город', address: 'ул. Скобелевская, дом 32', phoneNumber: '8-777-777-57-57').toMap());

      db.insert(DataBaseRequest.tableSklad,Sklad(quantity: 100, dateOfReceipt: '08-08-2022', deliveryCost: 202020, id_product: 1, id_customer: 1, id_provider: 2).toMap());

      db.insert(DataBaseRequest.tableUser,User(login: 'aaa', password: 'aaaa', name: 'Аркадий', surname: 'Аркаденко', patronymic: 'Аркадьевич', email: 'araara@gmail.com', id_role: 1, id_post: 4).toMap());

      db.insert(DataBaseRequest.tableTovar,Tovar(TovarName: 'Tatakee!!', weight: 1, cost: 750, description: 'Капитан... А вы....слышали о море?.... Об этом огромном, почти бескрайнем озере, уходящем за горизонт?' , id_user: 1, id_ptoductType: 2).toMap());
      db.insert(DataBaseRequest.tableTovar,Tovar(TovarName: 'HEY!HEY!HEY!', weight: 1, cost: 790, description: 'Прощай, мой рай...' , id_user: 1, id_ptoductType: 3).toMap());
      db.insert(DataBaseRequest.tableTovar,Tovar(TovarName: 'Даттебайо!', weight: 1, cost: 790, description: 'Мы жалеем собак, ведь они же совсем как люди... Но мы не жалеем людей, ведь они как собаки!' , id_user: 1, id_ptoductType: 3).toMap());
      db.insert(DataBaseRequest.tableTovar,Tovar(TovarName: 'Папина дочка', weight: 1, cost: 790, description: 'Я хотел создать мир… где дети не будут плакать. Вот почему я стал шпионом' , id_user: 1, id_ptoductType: 3).toMap());

      db.insert(DataBaseRequest.tableSection,Section(sectionNumber: 1, id_sklad: 1).toMap());

    }
    on DatabaseException catch(e){}
  }
  

  Future<void> onDropTable() async {
    database.close();
    deleteDatabase(_pathDb);
  }

}