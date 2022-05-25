// ignore_for_file: public_member_api_docs, sort_constructors_first
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
