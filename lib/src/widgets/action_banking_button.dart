import 'package:flutter/material.dart';

/// Custom Buttom
class ActionBankingButton extends StatelessWidget {
  /// Cor do butão
  final Color color;

  /// Quando o butão for clicado
  final void Function() onPressed;

  /// Icone ao lado do texto
  final Icon icon;

  /// Texto ao lado do icone
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
