import 'package:flutter/material.dart';

void showCustomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: 400,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        child: Column(
          children: [
            Container(
              width: 50,
              height: 10,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      );
    },
  );
}
