import 'package:flutter/material.dart';

class DelAccList extends StatefulWidget {
  final bool isChecked;
  final String reason;

  DelAccList({
    Key? key,
    required this.isChecked,
    required this.reason,
  }) : super(key: key);

  @override
  _DelAccListState createState() => _DelAccListState();
}

class _DelAccListState extends State<DelAccList> {
  late bool isChecked; // Declare a local mutable isChecked

  @override
  void initState() {
    super.initState();
    isChecked = widget.isChecked; // Initialize the local isChecked
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Row(
            children: [
              Checkbox(
                value: isChecked,
                checkColor: Colors.black,
                activeColor: Colors.orange,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!; // Update the local isChecked
                  });
                },
              ),
              SizedBox(width: 10),
              Text(
                widget.reason,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            color: Color.fromARGB(255, 216, 214, 214),
          ),
        ),
      ],
    );
  }
}
