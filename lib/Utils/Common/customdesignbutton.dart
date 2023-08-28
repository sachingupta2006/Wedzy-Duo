import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDesignButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomDesignButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xFFEF2B7B)),
        ),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: Center(
              child: Text(
            text,
            textAlign: TextAlign.center,
            // textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
              fontFamily: 'AvenirNextCyr',
              fontWeight: FontWeight.w700,
            ),
          )),
        ),
      ),
    );
  }
}
