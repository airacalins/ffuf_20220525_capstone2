// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_playground/data/data.dart';

enum ApplicationStatus {
  Pending,
  Delivered,
  Processing,
  Hired,
  Declined,
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

  String get applicationStatusText {
    switch (applicationStatus) {
      case ApplicationStatus.Pending:
        return 'Pending';
      case ApplicationStatus.Delivered:
        return 'Delivered';
      case ApplicationStatus.Processing:
        return 'Processing';
      case ApplicationStatus.Hired:
        return 'Hired';
      case ApplicationStatus.Declined:
        return 'Declined';
      default:
        'NA';
    }
    throw ('NA');
  }
}

class Applications with ChangeNotifier {
  final List<Application> _applications = ApplicationsData.applications;

  List<Application> get applications => [..._applications];

  Application getApplicationById(String id) {
    return [..._applications].firstWhere((application) => application.id == id);
  }
}
