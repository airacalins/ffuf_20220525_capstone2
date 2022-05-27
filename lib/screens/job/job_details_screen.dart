import 'package:flutter/material.dart';
import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/themes/color_theme.dart';
import 'package:provider/provider.dart';

class JobDetailsScreen extends StatelessWidget {
  final Job job;
  const JobDetailsScreen(this.job, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Company company = Provider.of<Companies>(context).getCompanyById(job.companyId);
    final JobType jobType = Provider.of<JobTypes>(context).getJobTypeById(job.jobTypeId);
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 5,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey.shade300,
              ),
            ),
            const SizedBox(height: 30),
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
              height: 100,
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Qualifications:',
                    style: textTheme.headline4,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: job.qualifications.length,
                    itemBuilder: (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 6, right: 10.0),
                            child: Icon(
                              Icons.circle,
                              size: 7,
                              color: ColorTheme.textColor,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              job.qualifications[index],
                              softWrap: true,
                              style: textTheme.caption,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
