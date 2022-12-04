import 'package:flutter_application_1/domain/entity/klient_entity.dart';

class Klient extends KlientEntity{
  late int id;
  final String klientName;
  final String address;
  final String phoneNumber;
  Klient({
  required this.klientName,
  required this.address,
  required this.phoneNumber
    }): super(
      klientName: klientName,
      address: address,
      phoneNumber: phoneNumber);

  Map<String,dynamic> toMap(){
    return{
      'klientName': klientName,
      'address': address,
      'phoneNumber': phoneNumber
    };
  }

  factory Klient.toFromMap(Map<String, dynamic> json){
    return Klient(
      klientName: json['klientName'],
      address: json['address'],
      phoneNumber: json['phoneNumber']
      );
  } 
}