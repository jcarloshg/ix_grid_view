// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ix_grid_view/widgets/gridview_builder.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ix frid view"),
      ),
      body: const SafeArea(
        child: GridViewBuildWidget(),
      ),
    );
  }
}
