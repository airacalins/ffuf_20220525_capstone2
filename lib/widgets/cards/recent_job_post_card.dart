import 'package:flutter/material.dart';
import 'package:flutter_playground/themes/color_theme.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/models/models.dart';

class RecentJobPostCard extends StatelessWidget {
  final Job job;
  const RecentJobPostCard(this.job, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Company company = Provider.of<Companies>(context).getCompanyById(job.companyId);
    final JobType jobType = Provider.of<JobTypes>(context).getJobTypeById(job.jobTypeId);
    final textTheme = Theme.of(context).textTheme;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image(
              image: NetworkImage(
                company.imageUrl,
              ),
              width: 50,
            ),
          ),
        ),
        title: Text(
          job.title,
          style: textTheme.bodyText1!.merge(
            const TextStyle(
              fontWeight: FontWeight.bold,
              color: ColorTheme.textColor,
            ),
          ),
        ),
        subtitle: Text(
          jobType.name,
          style: textTheme.caption,
        ),
        trailing: Text(
          '${job.salaryFrom.toStringAsFixed(0)}/m',
          style: textTheme.caption,
        ),
      ),
    );
  }
}
