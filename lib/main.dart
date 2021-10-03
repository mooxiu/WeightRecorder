import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weight_recorder/weight_record.dart';
import 'package:weight_recorder/weight_record_form.dart';

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
    if (_myRecords.isEmpty) {
      return const Center (
        child: Text(
        "No Weight Records. Please Input Your Weight By Pushing The Plus Button! ", 
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20
          ),
        textAlign: TextAlign.center,
        ),
      );  
    } 
    
    return ListView.builder(
      itemCount: _myRecords.length,
      itemBuilder: (BuildContext _context, int index) {
        // ignore: prefer_const_constructors
        return ListView(
          children: const <Widget>[
            Card(
              child: ListTile(
                title: Text("Your Daily Weight"),
                subtitle: Text("This should be the time"),
              ),
            )
          ],
        );
      },
    );
  }

  // _addNew(): navigate to a new page to add weight and time.
  void _addNew() {
    final _formKey = GlobalKey<FormState>();
    Navigator.of(context).push(
      Route<>
    );
  }
}