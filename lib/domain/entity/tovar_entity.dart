class TovarEntity{
  late int id;
  final String TovarName;
  final int weight;
  final int cost;
  final String description;
  final int id_user;
  final int id_ptoductType;

 TovarEntity({
  required this.TovarName,
  required this.weight,
  required this.cost,
  required this.description,
  required this.id_user,
  required this.id_ptoductType,
  });
}