import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vachanapetty/features/domain/entities/quotes_data.dart';
import 'package:vachanapetty/features/domain/usecases/get_all_data.dart';

part 'quotes_event.dart';
part 'quotes_state.dart';
part 'quotes_bloc.freezed.dart';

class QuotesBloc extends Bloc<QuotesEvent, QuotesState> {
  final GetAllData _getAllData;
  List<QuotesDataEntity> _quotes = [];
  List<int> _shuffledIndices = [];
  int _currentIndex = 0;

  /// Initial
  QuotesBloc({required GetAllData allData})
      : _getAllData = allData,
        super(const QuotesState.initial()) {
    void shuffleQuotes() {
      _shuffledIndices = List.generate(_quotes.length, (i) => i)..shuffle();
      _currentIndex = 0;
    }

    /// Random
    on<_FetchRandom>((event, emit) async {
      if (_quotes.isEmpty) return;
      if (_shuffledIndices.isEmpty ||
          _currentIndex >= _shuffledIndices.length) {
        shuffleQuotes();
      }

      final randomIndex = _shuffledIndices[_currentIndex];
      _currentIndex++;
      emit(QuotesState.fetch(quotesData: _quotes, jumpToIndex: randomIndex));
    });

    /// fetch all
    on<_FetchAll>((event, emit) async {
      emit(const QuotesState.loading());
      final failureOrSuccess = await _getAllData.call();
      return failureOrSuccess.fold(
        (failure) => emit(QuotesState.error(message: failure.errorMessage)),
        (quotes) {
          _quotes = quotes;
          emit(QuotesState.fetch(quotesData: quotes));
        },
      );
    });
  }
}
