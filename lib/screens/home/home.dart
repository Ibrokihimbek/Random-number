import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:random/screens/home/widgets/button.dart';
import 'package:random/screens/home/widgets/text_fiels.dart';
import 'package:random/service/random_number.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController minController = TextEditingController();
  TextEditingController maxController = TextEditingController();

  String number = '0';

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'Random Number',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 24,
            right: 24,
            left: 24,
            bottom: 150,
          ).r,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 150.w,
                    child: CustomTextfield(
                      word: 'Min number',
                      textController: minController,
                    ),
                  ),
                  SizedBox(
                    width: 150.w,
                    child: CustomTextfield(
                      word: 'Max number',
                      textController: maxController,
                    ),
                  ),
                ],
              ),
              Text(
                number,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 80.sp,
                ),
              ),
              Button(
                onTap: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  setState(
                    () {
                      number = next(
                        min: int.parse(minController.text),
                        max: int.parse(maxController.text),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
