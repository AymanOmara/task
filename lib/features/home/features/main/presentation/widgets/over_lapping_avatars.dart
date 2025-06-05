import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:task/core/ui/theme/colors.dart';
import 'package:task/core/ui/theme/theme_utils.dart';

class OverlappingAvatars extends StatelessWidget {
  final List<String> avatars;
  final int maxVisible;

  const OverlappingAvatars({
    super.key,
    required this.avatars,
    this.maxVisible = 3,
  });

  @override
  Widget build(BuildContext context) {
    final visibleAvatars = avatars.take(maxVisible).toList();
    final remainingCount = avatars.length - maxVisible;
    const double overlap = 20;

    return SizedBox(
      height: 48,
      child: Stack(
        children: [
          ...visibleAvatars.asMap().entries.map((entry) {
            final index = entry.key;
            final avatarUrl = entry.value;

            return Positioned(
              left: index * overlap,
              child: ClipOval(
                child: CachedNetworkImage(
                  imageUrl: avatarUrl,
                  width: 48,
                  height: 48,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) => Image.asset(
                    "assets/images/profile_picture.png",
                    width: 48,
                    height: 48,
                    fit: BoxFit.cover,
                  ),
                  placeholder: (context, url) => Container(
                    width: 48,
                    height: 48,
                    color: white,
                  ),
                ),
              ),
            );
          }),
          if (remainingCount > 0)
            Positioned(
              left: visibleAvatars.length * overlap,
              child: CircleAvatar(
                radius: 24,
                backgroundColor: charcoal,
                child: Text(
                  '+$remainingCount',
                  style: theme.undefined,
                ),
              ),
            ),
        ],
      ),
    );
  }
}