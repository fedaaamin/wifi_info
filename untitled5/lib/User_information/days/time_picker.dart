import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimePickerDialog extends StatefulWidget {
  const TimePickerDialog({super.key});

  @override
  _TimePickerDialogState createState() => _TimePickerDialogState();
}

class _TimePickerDialogState extends State<TimePickerDialog> {
  TimeOfDay selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 350,
        height: 343,
        color: const Color(0xFF790023),
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.time,
                initialDateTime: DateTime.now(),
                onDateTimeChanged: (DateTime newDateTime) {
                  setState(() {
                    selectedTime = TimeOfDay.fromDateTime(newDateTime);
                  });
                },
              ),
            ),
            CupertinoButton(
              color: Colors.white,
              child: const Text('Done'),
              onPressed: () {
                Navigator.of(context).pop(selectedTime.format(context));
              },
            ),
          ],
        ),
      ),
    );
  }
}
