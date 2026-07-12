class Unit {
  const Unit();
}

const unit = Unit();

// Either sealed class
sealed class Either<L, R> {
  const Either();

  // แบบเดิม
  T match<T>(T Function(L l) leftFn, T Function(R r) rightFn);

  // fold แบบ FP-style
  T fold<T>(T Function(L l) onLeft, T Function(R r) onRight) =>
      match(onLeft, onRight);

  // ตรวจชนิด
  bool get isError => this is Left<L, R>;
  bool get isSuccess => this is Right<L, R>;

  // ดึงค่า
  L getValueError() => (this as Left<L, R>).value;
  R getValueSuccess() => (this as Right<L, R>).value;
}

class Left<L, R> extends Either<L, R> {
  final L value;
  const Left(this.value);

  @override
  T match<T>(T Function(L l) leftFn, T Function(R r) rightFn) => leftFn(value);
}

class Right<L, R> extends Either<L, R> {
  final R value;
  const Right(this.value);

  @override
  T match<T>(T Function(L l) leftFn, T Function(R r) rightFn) => rightFn(value);
}

// Shortcuts
Either<L, R> left<L, R>(L l) => Left(l);
Either<L, R> right<L, R>(R r) => Right(r);
