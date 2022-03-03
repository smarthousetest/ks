import 'package:flutter/material.dart';
import 'package:kazansummit/cubit/all/model.dart';
import 'package:kazansummit/main.dart';
import 'package:kazansummit/screens/claim_edit_page.dart';

Citizenship? selectedvalueglobal;

class DropdownInputCopy extends StatefulWidget {
  String text;
  List<Citizenship> list;
  Citizenship selectedvalue;
  String find;

  DropdownInputCopy(
      {required this.text,
      required this.list,
      required this.selectedvalue,
      required this.find});

  @override
  _DropdownInputCopyState createState() => _DropdownInputCopyState();
}

class _DropdownInputCopyState extends State<DropdownInputCopy> {
  @override
  void initState() {
    if (widget.selectedvalue.id == "none") {
      selectedvalueglobal = null;
    } else {
      for (var i = 0; i < widget.list.length; i++) {
        if (widget.list[i].id == widget.selectedvalue.id) {
          widget.selectedvalue = widget.list[i];
          selectedvalueglobal = widget.list[i];
        }
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<Citizenship>(
      decoration: InputDecoration(
        labelText: "${widget.text}",
        contentPadding:
            EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 4),
        isDense: true,
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
      items: widget.list.map((selector) {
        return DropdownMenuItem<Citizenship>(
            child: Text("${selector.display}"), value: selector);
      }).toList(),
      onChanged: (data) {
        setState(() {
          widget.selectedvalue = data!;
          drops.selecteddrops[widget.find] = data;
          selectedvalueglobal = data;
          print(widget.selectedvalue);
          print(data.display);
        });
      },
      value: selectedvalueglobal,
    );
  }
}
