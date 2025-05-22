import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vachanapetty/config/errors/failures.dart';
import 'package:vachanapetty/features/domain/entities/quotes_data.dart';
import 'package:vachanapetty/features/domain/usecases/getrandomdata.dart';

part 'quotes_event.dart';
part 'quotes_state.dart';
part 'quotes_bloc.freezed.dart';

class QuotesBloc extends Bloc<QuotesEvent, QuotesState> {
  final Getrandomdata getrandomdata;
  QuotesBloc(this.getrandomdata) : super(QuotesState.initial()) {
    on<_FetchRandom>((event, emit) async {
      emit(state.copyWith(isLoading: true, failorpass: const None()));
      final failureOrSuccess = await getrandomdata();
      emit(
        failureOrSuccess.fold(
          (failure) => state.copyWith(
            isLoading: false,
            failorpass: some(Left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            quotedata: success,
            failorpass: some(Right(success)),
          ),
        ),
      );
    });
  }
}
