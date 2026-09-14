import 'package:flutter/material.dart';

class StudentDetailsScreen extends StatelessWidget {
  final String name;
  final int age;
  const StudentDetailsScreen({
    super.key,
    required this.name,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Details')),
      body: const Center(child: Text('Student Details Screen')),
    );
  }
}
