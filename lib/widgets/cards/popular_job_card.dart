import 'package:flutter/material.dart';
import 'package:flutter_playground/themes/themes.dart';
import 'package:provider/provider.dart';

import 'package:flutter_playground/models/models.dart';

class PopularJobCard extends StatelessWidget {
  final Job job;

  const PopularJobCard(this.job, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Company company = Provider.of<Companies>(context).getCompanyById(job.companyId);
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: MediaQuery.of(context).size.height * 0.35,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image(
                                image: NetworkImage(company.imageUrl),
                              ),
                            ),
                          ),
                          Text(
                            company.name,
                            style: textTheme.caption,
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(
                          Icons.favorite,
                          size: 20,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    job.title,
                    style: textTheme.bodyLarge!.merge(
                      const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorTheme.textColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '\$${job.salaryFrom.toStringAsFixed(0)}/m  ',
                          style: textTheme.caption!.merge(
                            const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorTheme.textColor,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: job.location,
                          style: textTheme.caption,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
