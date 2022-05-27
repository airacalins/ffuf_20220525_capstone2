import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class RecentJobPostList extends StatelessWidget {
  const RecentJobPostList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recentJobs = Provider.of<Jobs>(context).recentJobs;

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      // physics: const ScrollPhysics(),
      itemBuilder: (context, index) => RecentJobPostCard(recentJobs[index]),
      itemCount: recentJobs.length,
    );
  }
}
