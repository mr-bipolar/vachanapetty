import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vachanapetty/assets/assets.dart';
import 'package:vachanapetty/features/presentation/bloc/quotes_bloc.dart';
import 'package:vachanapetty/features/presentation/widgets/custom_widgets/app_bar.dart';
import 'package:vachanapetty/features/presentation/pages/bottom_sheet/bottom_sheet.dart';
import 'package:vachanapetty/core/weel/weel_list.dart';
import 'package:vachanapetty/features/presentation/widgets/home_widget/home_widget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  StreamController<int> controller = StreamController<int>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(45.0),
          child: AppBarWidget(
            title: "Vachanapetty",
          )),
      body: SafeArea(
          child: Stack(
        alignment: Alignment.center,
        children: [
          HomeWidget.backGroundImage(image: Assets.bgImage),
          HomeWidget.bottomStack(
              controller: controller,
              callBack: () async => await showBottomSheets(context)),
          HomeWidget.topStack(callBack: () async {
            controller.add(Random().nextInt(items.length));
            context.read<QuotesBloc>().add(const QuotesEvent.fetchRandom());
          })
        ],
      )),
    );
  }
}
