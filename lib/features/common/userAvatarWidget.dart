import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

import '../../core/modals/userModal.dart';

class AppUserAvatar extends StatelessWidget {
  const AppUserAvatar({
    Key? key,
    required this.userModals,
    required this.size,
  }) : super(key: key);

  final UserModals userModals;
  final int size;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2),
      child: SizedBox(
        height: size.toDouble(),
        width: size.toDouble(),
        child: OctoImage(
          fit: BoxFit.contain,
          image: CachedNetworkImageProvider(userModals.profilePhotoLink),
          progressIndicatorBuilder: (context, progress) {
            double value = 0;
            if (progress != null && progress.expectedTotalBytes != null) {
              value = progress.cumulativeBytesLoaded / (progress.expectedTotalBytes!);
            }

            return Container(
              width: double.infinity,
              child: Center(
                child: CircularProgressIndicator(
                  value: value,
                ),
              ),
            );
          },
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
              child: Center(
                child: Text(
                  userModals.userId[0].toUpperCase(),
                  textScaleFactor: 2.5,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
