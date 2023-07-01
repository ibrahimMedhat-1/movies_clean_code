import 'package:dartz/dartz.dart';
import 'package:movies_clean_code/core/failure/failure.dart';

abstract class BaseUseCase<T, Parameters> {
  Future<Either<Failure, T>> call(Parameters parameters);
}

class Parameters {
  final int id;

  Parameters(this.id);

  @override
  List<Object> get props => [id];
}

class NoParameters {
  NoParameters();

  @override
  List<Object> get props => [];
}
