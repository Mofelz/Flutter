import 'package:flutter_application_1/domain/entity/tovarcategory_entity.dart';

class TovarCategory extends tovarcategory_entity{
  late int id;
  final String typeName;
  TovarCategory({required this.typeName}): super(typeName: typeName);

  Map<String,dynamic> toMap(){
    return{
      'typeName': typeName,
    };
  }

  factory TovarCategory.toFromMap(Map<String, dynamic> json){
    return TovarCategory(typeName: json['typeName']);
  } 
}