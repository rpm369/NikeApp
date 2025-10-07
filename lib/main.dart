import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nikeapp/Model/ShoeModel.dart';
import 'package:nikeapp/util/RouteGenerator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ShoeModelAdapter());

  await Hive.openBox("cartTotal");
  await Hive.openBox<ShoeModel>("inventory");
  await Hive.openBox<ShoeModel>("cart");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      onGenerateRoute: Routegenerator.generateRoute,
    );
  }
}
