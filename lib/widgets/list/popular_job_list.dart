import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/models/models.dart';
import 'package:flutter_playground/widgets/widgets.dart';

class PopularJobList extends StatelessWidget {
  const PopularJobList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final popularJobs = Provider.of<Jobs>(context).polularJobs;

    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: popularJobs.length,
      itemBuilder: (BuildContext context, int index) => PopularJobCard(popularJobs[index]),
    );
  }
}
