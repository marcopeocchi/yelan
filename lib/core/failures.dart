enum FailureSeverity {
  critical,
  high,
  low,
}

abstract class Failure {
  final String type;
  final String message;
  final FailureSeverity severity;
  final Object? error;
  final Object? stacktrace;

  const Failure({
    required this.type,
    required this.message,
    required this.severity,
    this.error,
    this.stacktrace,
  });
}

class FetchFailure extends Failure {
  const FetchFailure({
    super.type = 'FetchFailure',
    super.message = 'An error occured while fetching data from the server',
    super.severity = FailureSeverity.critical,
    super.stacktrace = '',
    super.error = '',
  });
}

class LocalStorageFailure extends Failure {
  const LocalStorageFailure({
    super.type = 'LocalStorageFailure',
    super.message = 'An error occured while fetching from SharedPreferences',
    super.severity = FailureSeverity.high,
    super.stacktrace = '',
    super.error = '',
  });
}
