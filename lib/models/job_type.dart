// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_playground/data/job_types_data.dart';

class JobType {
  String id;
  String name;

  JobType({
    required this.id,
    required this.name,
  });
}

class JobTypes with ChangeNotifier {
  List<JobType> _jobTypes = JobTypesData.jobTypes;

  JobType getJobTypeById(String id) {
    return [..._jobTypes].firstWhere((jobType) => jobType.id == id);
  }
}
