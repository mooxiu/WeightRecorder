import 'package:flutter/material.dart';

class WeightRecordForm extends StatefulWidget {
  const WeightRecordForm({Key? key}): super(key: key);

  @override
  _WeightRecordFormState createState() => _WeightRecordFormState();
}

class _WeightRecordFormState extends State<WeightRecordForm> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input your weight'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: myController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.data_usage),                
            ),
            // TODO: time input field
            

          ],
        ),
      ),
    );
  }
}