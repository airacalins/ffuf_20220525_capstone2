import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class JobDetailsTab extends StatelessWidget {
  final Job job;

  JobDetailsTab(
    this.job, {
    Key? key,
  }) : super(key: key);

  final List<String> detailTabs = ['Description', 'Company', 'Reviews'];

  @override
  Widget build(BuildContext context) {
    final Company company =
        Provider.of<Companies>(context).getCompanyById(job.companyId);

    return DefaultTabController(
      length: detailTabs.length,
      child: NestedScrollView(
        scrollDirection: Axis.vertical,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverToBoxAdapter(
            child: Column(
              children: [
                TabBar(
                  tabs: detailTabs.map((e) => Tab(text: e)).toList(),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
        body: TabBarView(
          children: [
            SingleChildScrollView(
                child: QualificationDetails(job.qualifications)),
            SingleChildScrollView(child: CompanyDetails(company)),
            SingleChildScrollView(child: CompanyDetails(company)),
          ],
        ),
      ),
    );
  }
}
