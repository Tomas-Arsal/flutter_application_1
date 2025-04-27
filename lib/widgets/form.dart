import 'package:flutter/material.dart';

class FormElement extends StatefulWidget {
  final String name;
  final String? initialValue;
  final IconData icon;
  final bool isPassword;
  final ValueChanged<String>? onChanged;

  const FormElement({
    super.key,
    required this.name,
    this.initialValue,
    required this.icon,
    this.isPassword = false,
    this.onChanged,
  });

  @override
  State<FormElement> createState() => _FormElementState();
}

class _FormElementState extends State<FormElement> {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
    
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Enter your ${widget.name}',
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: Icon(widget.icon, color: Colors.red),
           
        ),
        style: const TextStyle(color: Colors.black, fontSize: 16),
        cursorColor: Colors.red,
      ),
    );
  }
}
