import 'package:flutter/material.dart';

class BgSelector extends StatefulWidget {
  final VoidCallback func;
  final double leftMargin;
  final double rightMargin;
  final int index;
  final bool isSelected;
  final double factor;

  const BgSelector({
    super.key,
    required this.func,
    required this.leftMargin,
    required this.rightMargin,
    required this.index,
    required this.isSelected,
    required this.factor,
  });

  @override
  State<BgSelector> createState() => _BgSelectorState();
}

class _BgSelectorState extends State<BgSelector> {
  late bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true), // 鼠标移入
      onExit: (_) => setState(() => isHovered = false), // 鼠标移出
      cursor: SystemMouseCursors.click, // 鼠标显示为手型
      child: GestureDetector(
        onTap: widget.func,
        child: Container(
          margin: EdgeInsets.fromLTRB(
            widget.leftMargin,
            10 * widget.factor,
            widget.rightMargin,
            10 * widget.factor,
          ),
          decoration: BoxDecoration(
            color: widget.isSelected
                ? Colors.blueGrey
                : const Color.fromARGB(0, 255, 255, 255),
            border: Border.all(color: Colors.white, width: 2.3 * widget.factor),
            boxShadow: isHovered
                ? [
                    BoxShadow(
                      offset: const Offset(-2, 2),
                      blurRadius: 5 * widget.factor,
                      color: const Color.fromARGB(155, 176, 176, 176),
                    ),
                  ]
                : [],
          ),
          width: 25 * widget.factor,
          height: 25 * widget.factor,
          child: Center(
            child: Text(
              "${widget.index}",
              style: const TextStyle(color: Colors.white, fontSize: 11),
            ),
          ),
        ),
      ),
    );
  }
}
