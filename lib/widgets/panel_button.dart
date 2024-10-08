import 'package:CeylonScape/theme/colors.dart';
import 'package:flutter/material.dart';

class PanelButton extends StatelessWidget {
  final String buttonText;
  final bool isActive;
  final Function()? onPressed;
  const PanelButton({super.key, required this.buttonText, required this.isActive, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: CeylonScapeColor.black40.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(0),
        elevation: 0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? CeylonScapeColor.primary : CeylonScapeColor.black0,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: isActive ? Colors.transparent : CeylonScapeColor.primary,
            width: 2,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            buttonText,
            style: TextStyle(
              color: isActive ? CeylonScapeColor.black0 : CeylonScapeColor.primary,
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),
          )
        ),
      ),
    );
  }
}
