import 'package:flutter/material.dart';
import 'package:weight_recorder/weight_record.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weight Recorder',
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: const WeightRecords(),
    );
  }
}

class WeightRecords extends StatefulWidget {
  const WeightRecords({ Key? key }) : super(key: key);

  @override
  _WeightRecordsState createState() => _WeightRecordsState();
}

class _WeightRecordsState extends State<WeightRecords> {
  final _myRecords = <WeightRecord>[];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weight Recorder'),
        actions: [
          IconButton(onPressed: _addNew, icon: const Icon(Icons.add))
        ],
      ),
      body: _buildRecords(),
    );
  }

  // _buildRecords(): show weight records as a listview.
  Widget _buildRecords() {
    return ListView.builder(
      itemBuilder: (BuildContext _context, int index) {
        // if is empty

        return Text('No Weight Records.');
        // return null;
      },
    );
  }

  // _addNew(): navigate to a new page to add weight and time.
  void _addNew() {

  }
}