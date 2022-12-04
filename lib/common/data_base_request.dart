abstract class DataBaseRequest{

  /// Таблица Роли
  ///
  ///
  static String deleteTable(String table) => 'DROP TABLE $table' ;
  /// Поля таблицы: Название роли
  static const String tableRole = 'Role';

  /// Таблица Пользователи
  ///
  /// Поля таблицы: Логин, Пароль, Роль
  static const String tableUser = 'User';
  static const String tablePost = 'Post';
  static const String tableTovar = 'Tovar';
  static const String tableTovarCategory = 'TovarCategory';
  static const String tableSklad = 'Sklad';
  static const String tableProvider = 'Provider';
  static const String tableSection = 'Section';
  static const String tableKlient = 'Klient';

  static const List<String> tableList = [ 
    tableRole,
    tableUser,
    tablePost,
    tableTovar,
    tableTovarCategory,
    tableSklad,
    tableProvider,
    tableSection,
    tableKlient];
  static const List<String> createTableList =[
    _createTableRole,
    _createTableUser,
    _createTablePost,
    _createTableTovar,
    _createTableTovarCategory,
    _createTableSklad,
    _createTableProvider,
    _createTableSection,
    _createTableKlient];

  /// Запрос для создания таблицы Role
  static const String _createTableRole =
      'CREATE TABLE "$tableRole" ("id" INTEGER,"role" TEXT NOT NULL UNIQUE, PRIMARY KEY("id" AUTOINCREMENT))';

        /// Запрос для создания таблицы Post
  static const String _createTablePost =
      'CREATE TABLE "$tablePost" ("id"	INTEGER,"postName" TEXT NOT NULL UNIQUE, PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Users
  static const String _createTableUser =
      'CREATE TABLE "$tableUser" ("id"	INTEGER,"login"	TEXT NOT NULL UNIQUE,"password"	TEXT NOT NULL, "name"	TEXT NOT NULL, "surname"	TEXT NOT NULL, "patronymic"	TEXT NULL, "email"	TEXT NOT NULL UNIQUE, "id_role" INTEGER, "id_post"	INTEGER, FOREIGN KEY("id_role") REFERENCES "Role"("id"),  FOREIGN KEY("id_post") REFERENCES "Post"("id"), PRIMARY KEY("id"))';
  
  /// Запрос для создания таблицы Tovar
  static const String _createTableTovar =
      'CREATE TABLE "$tableTovar" ("id"	INTEGER,"TovarName" TEXT NOT NULL UNIQUE, "weight" INTEGER NOT NULL, "cost" INTEGER NOT NULL, "description" TEXT NOT NULL, "id_user" INTEGER, "id_ptoductType" INTEGER, FOREIGN KEY("id_user") REFERENCES "User"("id"),  FOREIGN KEY("id_ptoductType") REFERENCES "ProductType"("id"), PRIMARY KEY("id"))';

  /// Запрос для создания таблицы TovarCategory
  static const String _createTableTovarCategory =
      'CREATE TABLE "$tableTovarCategory" ("id"	INTEGER,"typeName" TEXT NOT NULL UNIQUE, PRIMARY KEY("id"))';
      
  /// Запрос для создания таблицы Sklad
  static const String _createTableSklad =
      'CREATE TABLE "$tableSklad" ("id"	INTEGER, "quantity" INTEGER NOT NULL, "dateOfReceipt" TEXT NOT NULL, "deliveryCost" INTEGER NOT NULL, "id_product" INTEGER, "id_provider" INTEGER, "id_customer" INTEGER, FOREIGN KEY("id_product") REFERENCES "Product"("id"),  FOREIGN KEY("id_provider") REFERENCES "Provider"("id"),  FOREIGN KEY("id_customer") REFERENCES "Customer"("id"), PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Provider
  static const String _createTableProvider =
      'CREATE TABLE "$tableProvider" ("id"	INTEGER,"providerName" TEXT NOT NULL UNIQUE,"address" TEXT NOT NULL, "phoneNumber" TEXT NOT NULL UNIQUE, PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Klient
  static const String _createTableKlient =
      'CREATE TABLE "$tableKlient" ("id"	INTEGER,"klientName" TEXT NOT NULL UNIQUE,"address" TEXT NOT NULL, "phoneNumber" TEXT NOT NULL UNIQUE, PRIMARY KEY("id"))';

  /// Запрос для создания таблицы Section
  static const String _createTableSection =
      'CREATE TABLE "$tableSection" ("id"	INTEGER,"SectionNumber" INTEGER NOT NULL UNIQUE, "id_sklad" INTEGER, FOREIGN KEY("id_sklad") REFERENCES "Sklad"("id"), PRIMARY KEY("id"))';
}