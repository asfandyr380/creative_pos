import 'package:creative_pos/models/customer_model/customer_model.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<CustomerModel> getCustomerBox() =>
      Hive.box<CustomerModel>('customers');
}
