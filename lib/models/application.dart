// ignore_for_file: constant_identifier_names

enum ApplicationStatus {
  Pending,
  Delivered,
}

class Application {
  final String id;
  final String jobId;
  final ApplicationStatus applicationStatus;

  Application({
    required this.id,
    required this.jobId,
    required this.applicationStatus,
  });
}
