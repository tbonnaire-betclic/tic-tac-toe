// Same aliases as flutter-front's `types/result` package: a two-sided
// Result with a typed error instead of result_dart's Exception-only default.
import 'package:result_dart/result_dart.dart';

export 'package:result_dart/result_dart.dart' hide AsyncResult, Result;

typedef Result<T extends Object, E extends Object> = ResultDart<T, E>;
typedef AsyncResult<T extends Object, E extends Object> = AsyncResultDart<T, E>;
