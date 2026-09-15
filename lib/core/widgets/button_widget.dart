import 'package:book_store_app/core/utils/app_colors.dart';
import 'package:book_store_app/feature/home/data/model/book_model.dart';
import 'package:flutter/material.dart';

class ButtonStyleWidget extends StatelessWidget {
  const ButtonStyleWidget({
    super.key,
    this.bookModel,
    this.onPress,
    required this.buttonName,
  });

  final BookModel? bookModel;
  final VoidCallback? onPress;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 58,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.secondaryColor),

          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        onPressed: onPress,
        child: Text(buttonName, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
