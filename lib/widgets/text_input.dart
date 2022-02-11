import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextInput extends StatefulWidget {
  String text;
  TextEditingController textFieldControler;
  bool multline = false;
  Widget? icon;
  Widget? icon2;

  TextInput(
      {required this.text,
      required this.textFieldControler,
      this.multline = false,
      this.icon,
      this.icon2});

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        expands: widget.multline ? true : false,
        maxLines: widget.multline ? null : 1,
        onChanged: (newValue) {
          setState(() {});
        },
        textAlignVertical: TextAlignVertical.top,
        controller: widget.textFieldControler,
        decoration: InputDecoration(
            prefixIcon: widget.icon == "" ? null : widget.icon,
            suffixIcon: widget.icon2 == "" ? null : widget.icon2,
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            filled: true,
            labelText: "${widget.text}",
            fillColor: widget.textFieldControler.text != ""
                ? Colors.white
                : Color(0xFFF6F6F6),
            labelStyle: TextStyle(
                color: widget.textFieldControler.text != ""
                    ? Color(0xFF008870)
                    : Color(0xFFBDBDBD)),
            alignLabelWithHint: true,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1.0,
                    color: widget.textFieldControler.text != ""
                        ? Color(0xFF008870)
                        : Color(0xFFBDBDBD)),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFF008870), width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(8)))));
  }
}
