abstract class Failure {
  final String message;
  const Failure(this.message);
}

class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'Network error']);
}

class NotFoundFailure extends Failure {
  const NotFoundFailure([super.message = 'Data not found']);
}
