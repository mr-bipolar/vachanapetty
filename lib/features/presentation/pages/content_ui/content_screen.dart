import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vachanapetty/assets/app_colors.dart';
import 'package:vachanapetty/core/enum/font_family.dart';
import 'package:vachanapetty/core/extensions/space_extension.dart';
import 'package:vachanapetty/features/presentation/bloc/quotes_bloc.dart';
import 'package:vachanapetty/features/presentation/pages/home_ui/widgets/section_bar.dart';
import 'package:vachanapetty/features/presentation/widgets/base_widget.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Back to Home',
          style: TextStyle(
            color: AppColors.darkGold,
            fontSize: 16,
          ),
        ),
        leading: const BackButton(
          color: AppColors.darkGold,
        ),
      ),
      body: BaseWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SectionBar(),
            24.h,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    gradient: AppColors.cardGradient,
                    border: Border.all(
                        color: const Color.fromRGBO(201, 168, 76, 0.25)),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 12,
                          color: AppColors.backgroundVariant,
                          offset: Offset(0, 4))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: BlocBuilder<QuotesBloc, QuotesState>(
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (state.message != null) {
                        return Center(
                          child: Text(state.message!),
                        );
                      }
                      if (state.quotesData != null) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(Icons.auto_stories_outlined,
                                      color: AppColors.gold, size: 18),
                                  8.w,
                                  Text(
                                      '${state.quotesData?.nameEn} · ${state.quotesData?.nameMl}',
                                      style: TextStyle(
                                          letterSpacing: 1.5,
                                          color: AppColors.gold,
                                          fontSize: 13,
                                          fontFamily: FontFamily.cinzel.family))
                                ]),
                            12.h,
                            Text(
                              '" ${state.quotesData?.quoteMl} "',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: FontFamily.notoSerif.family,
                                  color: AppColors.textMuted),
                            ),
                            12.h,
                            Text(
                              '— ${state.quotesData?.verseNumber}',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: AppColors.gold,
                                  letterSpacing: 2.0,
                                  fontFamily: FontFamily.cinzel.family),
                            )
                          ],
                        );
                      }
                      return const SizedBox();
                    },
                  ),
                ),
              ),
            ),
            24.h,
            const SectionBar(),
          ],
        ),
      ),
    );
  }
}
