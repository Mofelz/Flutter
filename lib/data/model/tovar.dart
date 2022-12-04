import 'package:flutter_application_1/domain/entity/tovar_entity.dart';

class Tovar extends TovarEntity{
  late int id;
  final String TovarName;
  final int weight;
  final int cost;
  final String description;
  final int id_user;
  final int id_ptoductType;


   Tovar({
  required this.TovarName,
  required this.weight,
  required this.cost,
  required this.description,
  required this.id_user,
  required this.id_ptoductType,
  }):super(
    TovarName: TovarName,
    weight: weight,
    cost: cost,
    description: description,
    id_user: id_user,
    id_ptoductType: id_ptoductType
  );

  Map<String, dynamic> toMap(){
    return{
      'TovarName': TovarName,
      'weight': weight,
      'cost': cost,
      'description': description,
      'id_user': id_user,
      'id_ptoductType': id_ptoductType
    };
  }

  factory Tovar.toFromMap(Map<String, dynamic> json){
      return Tovar(
        TovarName: json['TovarName'],
        weight: json['weight'],
        cost: json['cost'],
        description: json['description'],
        id_user: json['id_user'],
        id_ptoductType: json['id_ptoductType']);
    }
}