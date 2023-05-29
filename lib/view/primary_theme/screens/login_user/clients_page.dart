import 'package:flutter/material.dart';

class ClintsPage extends StatefulWidget {
  const ClintsPage({super.key});

  @override
  State<ClintsPage> createState() => _ClintsPageState();
}

class _ClintsPageState extends State<ClintsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clints'),
      ),
      body: const Placeholder(),
    );
  }
}
