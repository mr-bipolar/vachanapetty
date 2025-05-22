import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failures with _$Failures {
  const factory Failures.clientfailure({String? errorMessage}) = _ClientFailure;
  const factory Failures.serverfailure({String? errorMessage}) = _ServerFailure;
}
