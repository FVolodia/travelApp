import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int itemCount;
  final int currentItemPosition;

  PageIndicator(this.itemCount, this.currentItemPosition);

  List<Widget> _buildItems() {
    List<Widget> list = [];
    for (int i = 0; i < itemCount; i++) {
      final isSelected = currentItemPosition == i;

      final item = AnimatedContainer(
        duration: Duration(milliseconds: 2000),
        curve: Curves.easeInOut,
        margin: EdgeInsets.all(8),
        width: isSelected ? 40 : 20,
        height:  20,
        decoration: BoxDecoration(
            color: isSelected ? Colors.blue : Colors.grey,
            borderRadius: BorderRadius.circular(isSelected ? 20 :5 )),
      );

      list.add(item);
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildItems(),
      ),
    );
  }
}
