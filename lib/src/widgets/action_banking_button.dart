import 'package:flutter/material.dart';

class ActionBankingButton extends StatelessWidget {
  final Color color;
  final void Function() onPressed;
  final Icon icon;
  final String text;
  const ActionBankingButton({
    Key key,
    this.color,
    this.onPressed,
    @required this.icon,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(),
      color: color,
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(3),
            child: icon,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
