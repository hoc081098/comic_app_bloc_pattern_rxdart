import 'package:meta/meta.dart';

A identity<A>(A a) => a;

A Function(A a) identityF<A>() => (a) => a;

@immutable
abstract class Either<A, B> {
  Either._();

  factory Either.left(A left) => Left<A, B>(left);

  factory Either.right(B right) => Right<A, B>(right);

  bool isLeft() => this is Left;

  bool isRight() => this is Right;

  C fold<C>(C ifLeft(A a), C ifRight(B b)) => this is Left
      ? ifLeft((this as Left).left)
      : ifRight((this as Right).right);

  Either<B, A> swap() => fold((it) => Right(it), (it) => Left(it));

  C foldLeft<C>(C initial, C operation(C c, B b)) =>
      fold((_) => initial, (a) => operation(initial, a));

  Either<A, C> map<C>(C f(B b)) => fold((l) => Left(l), (r) => Right(f(r)));

  Either<C, B> mapLeft<C>(C f(A a)) => fold((l) => Left(f(l)), (r) => Right(r));

  Either<A, C> flatMap<C>(Either<A, C> f(B b)) => fold((l) => Left(l), f);

  Either<C, D> bimap<C, D>(C leftOperation(A a), D rightOperation(B b)) => fold(
      (a) => Left<C, D>(leftOperation(a)),
      (b) => Right<C, D>(rightOperation(b)));

  bool exists(bool f(B b)) => fold((a) => false, (b) => f(b));

  B getOrElse(B f()) => fold((_) => f(), identityF<B>());

  B orNull() => getOrElse(() => null);
}

@immutable
class Left<A, B> extends Either<A, B> {
  final A left;

  Left(this.left) : super._();

  @override
  bool operator ==(o) => o is Left && o.left == left;

  @override
  int get hashCode => left.hashCode;

  @override
  String toString() => "Left($left)";
}

@immutable
class Right<A, B> extends Either<A, B> {
  final B right;

  Right(this.right) : super._();

  @override
  bool operator ==(o) => o is Right && o.right == right;

  @override
  int get hashCode => right.hashCode;

  @override
  String toString() => "Right($right)";
}
