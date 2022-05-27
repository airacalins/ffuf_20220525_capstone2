// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:collection';

import 'package:flutter/material.dart';

import 'package:flutter_playground/data/data.dart';

class Job {
  final String id;
  final String title;
  final String companyId;
  final double salaryFrom;
  final double salaryTo;
  final String location;
  final String categoryId;
  final String subCategoryId;
  final String jobTypeId;
  final List<String> qualifications;
  final DateTime date;
  int numberOfApplicant;

  Job({
    required this.id,
    required this.title,
    required this.companyId,
    required this.salaryFrom,
    required this.salaryTo,
    required this.location,
    required this.categoryId,
    required this.subCategoryId,
    required this.jobTypeId,
    required this.qualifications,
    required this.date,
    this.numberOfApplicant = 0,
  });
}

class Jobs with ChangeNotifier {
  final List<Job> _jobs = JobsData.jobs;

  List<Job> get recentJobs {
    final jobs = [..._jobs];
    jobs.sort((a, b) => a.date.compareTo(b.date));
    return jobs.toList();
  }

  List<Job> get polularJobs {
    final jobs = [..._jobs];
    jobs.sort((a, b) => a.numberOfApplicant.compareTo(b.numberOfApplicant));
    return jobs.take(5).toList();
  }

  int get jobsCount => _jobs.length;

  Job getJobById(String id) {
    return _jobs.firstWhere((job) => job.id == id);
  }
}
