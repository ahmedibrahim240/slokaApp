// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String lable;
  final bool? obscureText;
  final bool? filled;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final String? initialValue;
  final int? maxLines;
  final int? minLines;
  final bool expands;
  final int? maxLength;
  const CustomTextFormField({
    Key? key,
    required this.lable,
    this.textInputType = TextInputType.text,
    this.obscureText = false,
    this.onSaved,
    this.validator,
    this.onChanged,
    this.filled = true,
    this.initialValue = '',
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onSaved: onSaved,
          onChanged: onChanged,
          validator: validator,
          keyboardType: textInputType,
          obscureText: obscureText!,
          initialValue: initialValue,
          maxLength: maxLength,
          expands: expands,
          maxLines: maxLength,
          minLines: minLines,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
                width: 2,
              ),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            label: Text(lable),
            filled: true,
            labelStyle: const TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
