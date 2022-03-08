import 'package:hive/hive.dart';

part 'customer_model.g.dart';

@HiveType(typeId: 0)
class CustomerModel extends HiveObject {
  @HiveField(0)
  late String name;

  @HiveField(1)
  late String shopName;

  @HiveField(2)
  late String phone;

  @HiveField(3)
  late num give;

  @HiveField(4)
  late num take;
}
