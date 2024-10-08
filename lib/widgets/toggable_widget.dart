import 'package:CeylonScape/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:getwidget/types/gf_toggle_type.dart';

class ToggableWidget extends StatelessWidget {
  final String title;
  final bool state;
  final void Function(bool?) onPressed;
  const ToggableWidget({super.key, required this.title, required this.state, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: CeylonScapeColor.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          GFToggle(
            onChanged: onPressed,
            value: state,
            enabledThumbColor:CeylonScapeColor.black0,
            enabledTrackColor: CeylonScapeColor.primary,
            disabledThumbColor: CeylonScapeColor.black0,
            disabledTrackColor: CeylonScapeColor.black40.withOpacity(0.5),
            type: GFToggleType.ios,
          )
        ],
      ),
    );
  }
}
