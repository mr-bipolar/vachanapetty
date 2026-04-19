import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vachanapetty/assets/assets.dart';
import 'package:vachanapetty/features/presentation/bloc/quotes_bloc.dart';
import 'package:vachanapetty/features/presentation/widgets/circular_reveal.dart';
import 'package:vachanapetty/features/presentation/widgets/oval_painter.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageviewState();
}

late AnimationController _rotateController;

class _HomePageviewState extends State<HomePageView>
    with SingleTickerProviderStateMixin {
  /// late variables
  late PageController _pageController;
  double _pageOffset = 0.0;
  final double _buttonOffsetFromVisualBottom = 10;
  final double _heightOffsetFromVisualBottom = 80;

  /// init
  @override
  void initState() {
    super.initState();

    /// page controllers
    _pageController = PageController(initialPage: 0);
    _pageController.addListener(() {
      if (!mounted) return;
      setState(() {
        _pageOffset = _pageController.page ?? 0;
      });
    });

    /// button rotate
    _rotateController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 900));

    /// bloc
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<QuotesBloc>().add(const QuotesEvent.fetchAll());
    });
  }

  /// Random colors
  Color _getColor(int page) {
    const colors = Colors.primaries;
    final index = page % colors.length;
    return colors[index].withValues(alpha: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    final currentPage =
        _pageController.hasClients ? _pageController.page?.round() ?? 0 : 0;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarIconBrightness: Brightness.dark),
      child: Scaffold(
        body: SafeArea(
          top: false,
          child: Stack(
            children: [
              Positioned.fill(
                  child: Image.asset(
                Assets.bgImage,
                fit: BoxFit.cover,
                color: Colors.black.withValues(alpha: 0.4),
                colorBlendMode: BlendMode.multiply,
              )),
              BlocConsumer<QuotesBloc, QuotesState>(
                listener: (context, state) {
                  state.maybeWhen(
                    fetch: (_, jumpToIndex) {
                      if (jumpToIndex != null && _pageController.hasClients) {
                        _pageController.animateToPage(
                          jumpToIndex,
                          duration: const Duration(milliseconds: 1800),
                          curve: Curves.easeInOutCubic,
                        );
                      }
                    },
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                      loading: () => const Center(
                          child:
                              CircularProgressIndicator(color: Colors.white)),
                      error: (message) =>
                          Center(child: Card(child: Text(message.toString()))),
                      fetch: (quotesData, _) {
                        return PageView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: _pageController,
                          itemCount: quotesData.length,
                          itemBuilder: (context, index) {
                            final reveal = (1 - (_pageOffset - index).abs())
                                .clamp(0.0, 1.0);
                            final data = quotesData[index];
                            return CircularReveal(
                              revealPercent: reveal,
                              alignment: Alignment.center,
                              child: Container(
                                color: _getColor(index),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 18, vertical: 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 100),
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(data.chapterName,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall
                                                ?.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white))),
                                    Text(data.chapterVerseRef,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium
                                            ?.copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500)),
                                    const Spacer(),
                                    Card(
                                      color: Colors.white,
                                      elevation: 4,
                                      shadowColor: Colors.black12,
                                      child: Padding(
                                        padding: const EdgeInsets.all(18.0),
                                        child: Text(data.verses,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                fontSize: 18,
                                                fontFamily:
                                                    'Noto Serif Malayalam')),
                                      ),
                                    ),
                                    const Spacer(),
                                    const SizedBox(height: 200)
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      orElse: () => const Text('ssss'));
                },
              ),

              // Bottom Nav / Avatar
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SafeArea(
                  child: SizedBox(
                    height: _heightOffsetFromVisualBottom +
                        MediaQuery.of(context).viewPadding.bottom,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.center,
                      clipBehavior: Clip.none,
                      children: [
                        // Background oval
                        Positioned.fill(
                          child: CustomPaint(
                            painter: BottomOvalPainter(),
                          ),
                        ),
                        Positioned(
                          bottom: _buttonOffsetFromVisualBottom +
                              MediaQuery.of(context).viewPadding.bottom,
                          child: RotationTransition(
                            turns: Tween(begin: 0.0, end: 1.0).animate(
                              CurvedAnimation(
                                parent: _rotateController,
                                curve: Curves.easeInOutCubic,
                              ),
                            ),
                            child: CircleAvatar(
                              radius: 58,
                              backgroundColor: Colors.white,
                              child: IconButton.filled(
                                iconSize: 58,
                                style: IconButton.styleFrom(
                                  elevation: 4,
                                  shadowColor: Colors.black45,
                                  backgroundColor: _getColor(currentPage),
                                  foregroundColor: Colors.white,
                                  fixedSize: const Size(100, 100),
                                ),
                                onPressed: () {
                                  _rotateController.forward(from: 0);
                                  context
                                      .read<QuotesBloc>()
                                      .add(const QuotesEvent.fetchRandom());
                                },
                                icon: const Icon(Icons.cyclone_outlined),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    _rotateController.dispose();
    super.dispose();
  }
}
