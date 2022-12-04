
import '../../domain/entity/role_entity.dart';

class Role extends RoleEntity{
  late int id;
  final String nameRole;
  Role({required this.nameRole, required String role}): super(nameRole: nameRole);

  Map<String,dynamic> toMap(){
    return{
      'nameRole': nameRole,
    };
  }

  factory Role.toFromMap(Map<String, dynamic> json){
    return Role(nameRole: json['nameRole'], role: '');
  }
}
