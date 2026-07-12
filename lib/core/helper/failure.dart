enum FailureType { network429, unexpected }

class Failure {
  final FailureType type;
  final String? message;

  Failure({this.type = FailureType.unexpected, this.message});
}
