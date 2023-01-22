import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController textController;
  final String word;
  const CustomTextfield(
      {super.key, required this.word, required this.textController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50.h,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 4,
                offset: const Offset(4, 4),
              ),
            ],
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: TextFormField(
            keyboardType: TextInputType.number,
            controller: textController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(left: 8).r,
              border: InputBorder.none,
              hintText: word,
              hintStyle: const TextStyle(color: Colors.black38),
              helperStyle: const TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
