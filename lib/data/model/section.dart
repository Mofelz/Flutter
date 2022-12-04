import 'package:flutter_application_1/domain/entity/section_entity.dart';

class Section extends SectionEntity{
  late int id;
  final int sectionNumber;
  final int id_sklad;
  Section({
  required this.sectionNumber,
  required this.id_sklad,
    }): super(
      sectionNumber: sectionNumber,
      id_sklad: id_sklad);

  Map<String,dynamic> toMap(){
    return{
      'sectionNumber': sectionNumber,
      'id_sklad': id_sklad
    };
  }

  factory Section.toFromMap(Map<String, dynamic> json){
    return Section(
      sectionNumber: json['sectionNumber'],
      id_sklad: json['id_sklad']);
  } 
}