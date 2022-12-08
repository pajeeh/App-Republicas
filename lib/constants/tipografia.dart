import 'package:flutter/material.dart';

class _TextStyleItem extends StatefulWidget {
  const _TextStyleItem({
    Key? key,
    required this.name,
    required this.style,
    required this.text,
  })  : super(key: key);

  final String name;
  final TextStyle style;
  final String text;

  @override
  State<_TextStyleItem> createState() => _TextStyleItemState();
}

class _TextStyleItemState extends State<_TextStyleItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 16,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width:72,
            child: Text(
              widget.name, style: Theme.of(context).textTheme.caption),
          ),
          Expanded(child: Text(widget.text, style: widget.style),),
        ],
      ),
    );
  }
}