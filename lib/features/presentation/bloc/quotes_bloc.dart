import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vachanapetty/features/domain/entities/quotes_data.dart';
import 'package:vachanapetty/features/domain/usecases/get_all_data.dart';

part 'quotes_bloc.freezed.dart';
part 'quotes_event.dart';
part 'quotes_state.dart';

class QuotesBloc extends Bloc<QuotesEvent, QuotesState> {
  final GetAllData _getAllData;

  /// Initial
  QuotesBloc({required GetAllData allData})
      : _getAllData = allData,
        super(QuotesState.initial()) {
    /// fetch all
    on<_FetchAll>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final failureOrSuccess = await _getAllData.call(bookId: event.bookId);
      return failureOrSuccess.fold(
        (failure) => emit(
            state.copyWith(message: failure.errorMessage, isLoading: false)),
        (quotes) {
          emit(state.copyWith(quotesData: quotes, isLoading: false));
        },
      );
    });

    // choose Book
    on<_ChooseBook>((event, emit) {
      emit(state.copyWith(selectedBookId: event.bookId ?? 0));
    });
  }
}
