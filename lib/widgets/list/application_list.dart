import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class ApplicationList extends StatelessWidget {
  const ApplicationList({
    Key? key,
    required this.applications,
  }) : super(key: key);

  final List<Application> applications;

  @override
  Widget build(BuildContext context) {
    final jobData = Provider.of<Jobs>(context);
    final companyData = Provider.of<Companies>(context);

    return ListView.builder(
      itemCount: applications.length,
      itemBuilder: (BuildContext context, int index) {
        final application = applications[index];
        final job = jobData.getJobById(applications[index].jobId);
        final company = companyData.getCompanyById(job.companyId);

        return ApplicationCard(
          application: application,
          company: company,
          job: job,
        );
      },
    );
  }
}
