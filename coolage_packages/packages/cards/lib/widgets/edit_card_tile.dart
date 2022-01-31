import 'package:cached_network_image/cached_network_image.dart';
import 'package:cards/cards.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';

class EditCardTile extends StatelessWidget {
  final Cards? card;
  const EditCardTile({
    Key? key,
    @required this.card,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Kolors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const IconImagesWid(
            iconName: 'dots.png',
            height: 6,
            width: 6,
            color: Kolors.greyBlue,
          ),
          const SizedBox(height: 5),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              imageUrl: card!.image!,
              height: 92,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              placeholder: (_, __) {
                return Container(
                  height: 100,
                  color: Kolors.white,
                  child: const LogoLoading(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
