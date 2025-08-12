import 'package:flutter/material.dart';
import 'package:mdlabs_intern_task1/app/modules/home/views/local_widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: HomeBody()));
  }
}
