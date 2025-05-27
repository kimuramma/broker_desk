import 'package:flutter/material.dart';

class ApplyLeadPage extends StatefulWidget {
  const ApplyLeadPage({super.key});

  @override
  State<ApplyLeadPage> createState() => _ApplyLeadPageState();
}

class _ApplyLeadPageState extends State<ApplyLeadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Drawer(),
        title: Text('Go to scoring'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text('Data'),
      ),
    );
  }
}
