import 'package:flutter/material.dart';

class ButtonShadowWidget extends StatelessWidget {
  final Icon icon;
  final Function? onTap;

  const ButtonShadowWidget({
    Key? key,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (this.onTap != null) {
          this.onTap!();
        }
      },
      child: Container(
        height: 40,
        width: 40,
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black45.withOpacity(0.15),
                spreadRadius: 0,
                blurRadius: 15,
                offset: Offset(4, 4), // changes position of shadow
              )
            ]),
        child: this.icon,
      ),
    );
  }
}
