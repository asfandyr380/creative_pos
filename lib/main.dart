import 'package:creative_pos/models/customer_model/customer_model.dart';
import 'package:creative_pos/res/app_color.dart';
import 'package:creative_pos/view/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(CustomerModelAdapter());
  await Hive.openBox<CustomerModel>('customers');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Creative Pos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.whiteblue),
      home: Home(),
    );
  }
}
