import 'package:flutter/material.dart';

class CustomCardWidget extends StatefulWidget {
  final IconData icon;
  final String title;
  final String content;

  const CustomCardWidget(
      {Key? key,
      required this.icon,
      required this.title,
      required this.content})
      : super(key: key);

  @override
  State<CustomCardWidget> createState() => _CustomCardWidgetState();
}

class _CustomCardWidgetState extends State<CustomCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
              leading: Icon(widget.icon),
              title: Text(widget.title),
              subtitle: Text(widget.content))
        ],
      ),
    );
  }
}
