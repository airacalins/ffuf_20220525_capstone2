// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_playground/data/company_data.dart';

class Company {
  final String id;
  final String name;
  final String companyDescription;
  final String imageUrl;
  final String address;
  final String websiteUrl;

  Company({
    required this.id,
    required this.name,
    required this.companyDescription,
    required this.imageUrl,
    required this.address,
    required this.websiteUrl,
  });
}
