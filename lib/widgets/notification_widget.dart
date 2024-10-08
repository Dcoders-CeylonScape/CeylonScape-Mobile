import 'package:CeylonScape/theme/colors.dart';
import 'package:CeylonScape/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotificationWidget extends StatelessWidget {
  final String title;
  final String description;
  final DateTime dateTime;
  const NotificationWidget({super.key, required this.title, required this.description, required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      type: CardType.light,
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          foregroundColor: CeylonScapeColor.black0,
          backgroundColor: CeylonScapeColor.black5,
          shadowColor: CeylonScapeColor.black40.withOpacity(0.1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(0),
          elevation: 0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: CeylonScapeColor.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                description,
                style: const TextStyle(
                  color: CeylonScapeColor.black40,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    DateFormat('MM/dd/yyyy, HH:mm a').format(dateTime).toLowerCase(),
                    style: const TextStyle(
                      color: CeylonScapeColor.black40,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
