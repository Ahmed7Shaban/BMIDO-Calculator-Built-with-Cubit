import 'package:flutter/material.dart';

class RowAddRemove extends StatelessWidget {
  const RowAddRemove({
    super.key,
    required this.remove,
    required this.add,
  });
  final Function() remove;
  final Function() add;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: remove,
            child: const CircleAvatar(
              backgroundColor: Color(0xff081854),
              child: Icon(
                Icons.remove,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 31.66),
          GestureDetector(
            onTap: add,
            child: const CircleAvatar(
              backgroundColor: Color(0xff081854),
              child: Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
