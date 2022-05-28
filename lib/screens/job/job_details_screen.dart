import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/themes/color_theme.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class JobDetailsScreen extends StatelessWidget {
  final Job job;
  const JobDetailsScreen(this.job, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Company company = Provider.of<Companies>(context).getCompanyById(job.companyId);
    final textTheme = Theme.of(context).textTheme;
    final JobType jobType = Provider.of<JobTypes>(context).getJobTypeById(job.jobTypeId);

    final List<String> detailTabs = ['Description', 'Company', 'Reviews'];

    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
      ),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: DefaultTabController(
        length: detailTabs.length,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const BottomSheetTopHorizontalController(),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade300,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: NetworkImage(company.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              job.title,
              style: textTheme.headline4,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  company.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  height: 2,
                  width: 20,
                  color: ColorTheme.textColor,
                ),
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey.shade600,
                  size: 20,
                ),
                const SizedBox(width: 5),
                Text(job.location)
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      jobType.name,
                      style: textTheme.titleMedium!.merge(
                        TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  '\$${job.salaryFrom.toStringAsFixed(0)}/m',
                  style: textTheme.titleMedium!.merge(
                    TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey.shade600,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TabBar(
              tabs: detailTabs.map((e) => Tab(text: e)).toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  QualificationDetails(job.qualifications),
                  CompanyDetails(company),
                  CompanyDetails(company),
                ],
              ),
            ),
            // Expanded(child: CompanyDetails(company))
          ],
        ),
      ),
    );
  }
}
