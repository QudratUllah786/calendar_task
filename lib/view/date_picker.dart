import 'package:flutter/material.dart';
class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime? _startDate; // Stores the selected start date
  DateTime? _endDate;   // Stores the selected end date

  @override
  void initState() {
    super.initState();
    // Initialize the start date with the current date
    _startDate = DateTime.now();
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _startDate!, // Start date is the current date
      firstDate: DateTime(2000), // Your desired minimum date
      lastDate: DateTime(2101),  // Your desired maximum date
    );

    if (picked != null && picked != _startDate) {
      setState(() {
        _endDate = picked;
      });
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Range Picker Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selected Start Date: ${_startDate!.toLocal()}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Selected End Date: ${_endDate != null ? _endDate!.toLocal() : 'Select an end date'}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _selectEndDate(context),
              child: Text('Select End Date'),
            ),
          ],
        ),
      ),
    );
  }
}
