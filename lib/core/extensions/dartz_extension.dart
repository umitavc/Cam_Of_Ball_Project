import 'package:cam_of_ball/core/errors/errors.dart';
import 'package:dartz/dartz.dart';

typedef DataModel<T> = Either<Failure, T>;
typedef TestRight<T> = Right<Failure, T>;
typedef TestLeft<T> = Left<Failure, T>;

extension EitherX<L, R> on Either<L, R> {
  R asRight() => (this as Right).value as R;
  L asLeft() => (this as Left).value as L;
}
