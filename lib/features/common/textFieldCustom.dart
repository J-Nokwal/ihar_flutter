import 'dart:io';

import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  const TextFieldCustom({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.isValid,
    this.errorText,
    required this.obscureText,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final bool isValid;
  final String? errorText;
  final bool obscureText;

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState(obscureText);
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  _TextFieldCustomState(this.showtext);
  late bool showtext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none,
          ),
          // suffixIconColor: Colors.grey[],
          suffixIcon: (widget.obscureText)
              ? SizedBox(
                  height: 1,
                  child: InkWell(
                      onTap: () => setState(() {
                            showtext = !showtext;
                          }),
                      child: Icon(
                        (showtext) ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey,
                      )))
              : null,
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0), borderSide: BorderSide.none),
          // focusedBorder: InputBorder.none,
          filled: true,
          // fillColor: kColors.purpleLight,
          hintText: widget.hintText,
          errorText: widget.isValid ? null : widget.errorText,
        ),
        obscureText: showtext,
      ),
    );
  }
}
