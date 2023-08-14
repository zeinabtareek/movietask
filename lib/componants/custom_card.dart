
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: MediaQuery
          .of(context)
          .size
          .width,
      margin: null,
      padding: null,
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.transparent, width: 0),

      ),
      child: OctoImage(
        image: CachedNetworkImageProvider(
            image
        ),
        placeholderBuilder: OctoPlaceholder.blurHash(
            'LEHV6nWB2yk8pyo0adR*.7kCMdnj',
            fit: BoxFit.cover),
        errorBuilder: (context, url, error) {
          return const BlurHash(
              hash: 'LEHV6nWB2yk8pyo0adR*.7kCMdnj');
        },
        fit: BoxFit.cover,
      ),
    );
  }
}