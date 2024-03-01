import 'package:flutter/material.dart';

import '../../constants/styles.dart';

class InputFieldFlutter extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final double borderRadius;

  const InputFieldFlutter({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.controller,
     this.borderRadius=12,
  }) : super(key: key);

  @override
  State<InputFieldFlutter> createState() => _InputFieldFlutterState();
}

class _InputFieldFlutterState extends State<InputFieldFlutter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: AppStyles.DESCRIPTION_STYLE.copyWith(color: Colors.white,fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 15),
        Container(
          height: 55,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white.withOpacity(0.6),
              width: 0.5
            ),
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextField(
              style: AppStyles.DESCRIPTION_STYLE.copyWith(color: Colors.white),
              controller: widget.controller,
              decoration: InputDecoration(
                hintStyle: AppStyles.DESCRIPTION_STYLE,
                hintText: widget.hintText,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
