import 'package:flutter/material.dart';
import 'package:pro_multimedia/pages/event_info_page/widgets/social_media_button.dart';
import 'package:pro_multimedia/utils/image_asset.dart';

class SocialsMedia extends StatelessWidget {
  const SocialsMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SocialMediaButton(
          onTap: () {},
          icon: Image.asset(
            ImageAsset.facebook,
          ),
        ),
        SocialMediaButton(
          onTap: () {},
          icon: Image.asset(
            ImageAsset.instagram,
          ),
        ),
      ],
    );
  }
}
