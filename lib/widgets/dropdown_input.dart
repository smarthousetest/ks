import 'package:flutter/material.dart';

class DropdownInput extends StatefulWidget {
  String text;
  List<String> list;
  String? selectedvalue;

  DropdownInput(
      {required this.text, required this.list, required this.selectedvalue});

  @override
  _DropdownInputState createState() => _DropdownInputState();
}

class _DropdownInputState extends State<DropdownInput> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: "${widget.text}",
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        filled: true,
        fillColor:
            widget.selectedvalue != null ? Colors.white : Color(0xFFF6F6F6),
        labelStyle: TextStyle(
            color: widget.selectedvalue != null
                ? Color(0xFF008870)
                : Color(0xFFBDBDBD)),
        alignLabelWithHint: true,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1.0,
                color: widget.selectedvalue != null
                    ? Color(0xFF008870)
                    : Color(0xFFBDBDBD)),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF008870), width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(8))),
      ),
      items: widget.list.map((from) {
        return DropdownMenuItem(
          child: Text(from),
          value: from,
        );
      }).toList(),
      onChanged: (data) {
        setState(() {
          widget.selectedvalue = data;
        });
      },
      value: widget.selectedvalue,
    );
  }
}
