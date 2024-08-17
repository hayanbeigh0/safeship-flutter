import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    this.onPressed,
    required this.child,
    this.enabled = true,
  });
  final void Function()? onPressed;
  final Widget child;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.sp)),
        padding: EdgeInsets.symmetric(
          vertical: 8.sp,
          horizontal: 14.sp,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
      ),
      onPressed: enabled ? onPressed : null,
      child: child,
    );
  }
}
