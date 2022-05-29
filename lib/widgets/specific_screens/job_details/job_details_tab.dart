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

  final List<String> detailTabs = [
    'Description',
    'Company',
    'Reviews',
  ];

  @override
  Widget build(BuildContext context) {
    final Company company = Provider.of<Companies>(context).getCompanyById(job.companyId);

    return DefaultTabController(
      length: detailTabs.length,
      child: NestedScrollView(
        scrollDirection: Axis.vertical,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar(
                // title: const Text('Books'),
                automaticallyImplyLeading: false,
                floating: true,
                pinned: true,
                snap: false,
                primary: true,
                forceElevated: innerBoxIsScrolled,
                bottom: TabBar(
                  tabs: detailTabs.map((e) => Tab(text: e)).toList(),
                ),
              ),
            )
          ];
        },
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 75,
                ),
                child: QualificationDetails(job.qualifications),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 75,
                ),
                child: CompanyDetails(company),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 75,
                ),
                child: CompanyDetails(company),
              ),
            ),
          ],
        ),
      ),
    );
  }
}