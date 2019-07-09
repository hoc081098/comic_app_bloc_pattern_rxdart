import 'package:comic_app_bloc_pattern_rxdart/utils/either.dart';
import 'package:flutter_test/flutter_test.dart';

Either<int, String> _functionReturnEither(bool left) =>
    left ? Either.left(2) : Either.right("2");

void main() {
  group('Either', () {
    final left = Either.left("a");
    final right = Either.right(10);

    test('creation', () {
      expect(left, Left("a"));
      expect(right, Right(10));
    });

    test('isLeft', () {
      expect(left.isLeft(), true);
      expect(right.isLeft(), false);
    });

    test('isRight', () {
      expect(left.isRight(), false);
      expect(right.isRight(), true);
    });

    test('fold', () {
      expect(left.fold((l) => "l", (r) => "r"), "l");
      expect(right.fold((l) => "l", (r) => "r"), "r");
    });

    test('swap', () {
      expect(left.swap(), Either.right("a"));
      expect(right.swap(), Either.left(10));
    });

    group('foldLeft', () {
      test('none returns initial', () {
        expect(left.foldLeft("a", (c, b) => "b"), "a");
      });
      test('some returns result from operation', () {
        expect(right.foldLeft("a", (c, b) => "b"), "b");
      });
    });

    group('map', () {
      test('left remains Left', () {
        expect(left.map((b) => "$b extra"), Left("a"));
      });
      test('right to new Right', () {
        expect(right.map((b) => "$b extra"), Right("10 extra"));
      });
    });

    group('mapLeft', () {
      test('left to new Left', () {
        expect(left.mapLeft((a) => "${a}n extra"), Left("an extra"));
      });
      test('right remains Right', () {
        expect(right.mapLeft((a) => "$a extra"), Right(10));
      });
    });

    group('flatMap', () {
      test('left remains Left', () {
        expect(left.flatMap((_) => Right(20)), Left("a"));
      });
      test('left remains left with left transform', () {
        expect(left.flatMap((_) => Left("new")), Left("a"));
      });
      test('right transforms to new Left', () {
        expect(right.flatMap((_) => Left("new")), Left("new"));
      });
      test('right transforms to new Right', () {
        expect(right.flatMap((_) => Right(20)), Right(20));
      });
    });

    group('bimap', () {
      test('left uses left operation', () {
        expect(left.bimap((a) => "${a}n extra", (b) => b + 10.0),
            Left("an extra"));
      });
      test('right uses right operation', () {
        expect(right.bimap((a) => "${a}n extra", (b) => b + 10.0), Right(20.0));
      });
    });

    group('exists', () {
      test('positive predicate', () {
        expect(left.exists((_) => true), false);
        expect(right.exists((_) => true), true);
      });
      test('negative predicate', () {
        expect(left.exists((_) => false), false);
        expect(right.exists((_) => false), false);
      });
    });

    group('getOrElse', () {
      test('left returns alternative', () {
        expect(left.getOrElse(() => "alternative"), "alternative");
      });
      test('right returns value', () {
        expect(right.getOrElse(() => 10), 10);
      });
    });

    test('orNull', () {
      expect(left.orNull(), null);
      expect(right.orNull(), 10);
    });

    test('either return from a function', () {
      var left = _functionReturnEither(true);
      var right = _functionReturnEither(false);

      expect(left.isLeft(), true);
      expect(right.isRight(), true);

      expect(left.fold((i) => i + 2, (r) => r + "2"), 4);
      expect(right.fold((i) => i + 2, (r) => r + "2"), "22");

    });

    test('toString', () {
      expect(left.toString(), 'Left(a)');
      expect(right.toString(), 'Right(10)');
    });
  });
}
