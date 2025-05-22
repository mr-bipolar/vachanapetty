import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarWidget extends StatelessWidget {
  final String? title;
  const AppBarWidget({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.black87,
      title: Text(
        title ?? "",
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.pink.shade400,
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color.fromARGB(255, 234, 68, 123),
          systemNavigationBarColor: Colors.white),
      elevation: 4.0,
    );
  }
}
