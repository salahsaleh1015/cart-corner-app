import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {

final String hint;

  const CustomFormField({super.key, required this.hint});
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25),
              borderSide: const BorderSide(color: Colors.green),
            ),
            hintText: hint,

          ),
        ),
      ),
    );
  }
}
