import 'package:flutter_try_feature_list/exceptions/failure.dart';
import 'package:fpdart/fpdart.dart';

typedef Result<T> = Either<Failure, T>;
