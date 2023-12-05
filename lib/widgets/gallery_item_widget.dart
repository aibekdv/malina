import 'package:flutter/material.dart';
import 'package:malina/config/config.dart';

class GalleryItemWidget extends StatelessWidget {
  final ImageProvider<Object> image;
  final Color bgColor;
  final String title;
  final String description;

  const GalleryItemWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: image,
          alignment: Alignment.bottomRight,
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: theme.textTheme.titleMedium),
          const SizedBox(height: 10),
          Text(
            description,
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
