import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tea_app/model/tea_shop.dart';
import 'package:tea_app/pages/auth/login_page.dart';

void main() {
  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TeaShop(),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
          ),
          home: const LoginPage(),
        );
      },
    );
  }
}
