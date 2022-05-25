// ignore_for_file: public_member_api_docs, sort_constructors_first
class Job {
  final String id;
  final String title;
  final double salaryTo;
  final double salaryFrom;
  final String location;
  final List<String> qualifications;

  Job({
    required this.id,
    required this.title,
    required this.salaryTo,
    required this.salaryFrom,
    required this.location,
    required this.qualifications,
  });
}
