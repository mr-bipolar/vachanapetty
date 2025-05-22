import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vachanapetty/assets/assets.dart';
import 'package:vachanapetty/features/presentation/bloc/quotes_bloc.dart';
import 'package:vachanapetty/features/presentation/widgets/bottomsheet_widgets/bottomsheet_widget.dart';

Future<void> showBottomSheets(BuildContext con) async {
  showModalBottomSheet(
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true,
      context: con,
      builder: (ctx) {
        return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 172, 200),
                image: DecorationImage(
                    image: AssetImage(Assets.bgImage), fit: BoxFit.cover)),
            child:
                BlocBuilder<QuotesBloc, QuotesState>(builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                    child: CircularProgressIndicator(
                  color: Colors.pinkAccent,
                ));
              }
              return state.failorpass.fold(
                () => const SizedBox(),
                (either) => either.fold(
                  (failure) => BottomWidget.errorView(
                      label: failure.errorMessage.toString(),
                      callBack: () => Navigator.of(context).pop()),
                  (success) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      BottomWidget.chapterView(chapter: success.chapter),
                      BottomWidget.versesView(verse: success.verses),
                      BottomWidget.backButton(
                        callBack: () => Navigator.of(context).pop(),
                      )
                    ],
                  ),
                ),
              );
            }));
      });
}
