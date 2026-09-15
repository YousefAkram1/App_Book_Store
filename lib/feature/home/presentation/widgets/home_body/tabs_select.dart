// import 'package:book_store_app/core/utils/app_colors.dart';
// import 'package:book_store_app/feature/home/presentation/cubit/best_sell_book_cubit/book_sell_cubit.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class TabSelectItem extends StatefulWidget {
//   const TabSelectItem({super.key});

//   @override
//   State<TabSelectItem> createState() => _TabSelectItemState();
// }

// class _TabSelectItemState extends State<TabSelectItem> {
//   String selectedCategory = 'Fantasy';

//   final List<String> categories = ['Fantasy', 'History', 'Horror', 'Humor'];

//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//       spacing: 10,
//       runSpacing: 10,
//       children: categories.map((category) {
//         final bool isSelected = selectedCategory == category;

//         return ChoiceChip(
//           showCheckmark: false,
//           selectedColor: AppColors.primaryColor,
//           selected: isSelected,

//           onSelected: (value) {
//             if (!value) return;

//             setState(() {
//               selectedCategory = category;
//             });
//           },

//           label: Text(
//             category,
//             style: TextStyle(color: isSelected ? Colors.white : Colors.black),
//           ),

//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
//         );
//       }).toList(),
//     );
//   }
// }
