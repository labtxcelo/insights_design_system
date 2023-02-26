import 'package:flutter/material.dart';

class InsightsMainButton extends StatelessWidget {
  final String? buttonText;

  const InsightsMainButton({
    Key? key,
    this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.black, width: 0)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(4),
          splashColor: Colors.grey.withOpacity(0.3),
          onTap: () {},
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                buttonText ?? '',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
