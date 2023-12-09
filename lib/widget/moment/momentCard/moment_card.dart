import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:naemansan/models/moment_model.dart';
import 'package:naemansan/utilities/emotion_list.dart';
import 'package:naemansan/utilities/style/color_styles.dart';
import 'package:naemansan/utilities/style/font_styles.dart';

class MomentCard extends StatelessWidget {
  final MomentModel momentInfo;
  const MomentCard({super.key, required this.momentInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 160,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: EmotionConfig.getEmotionColor(momentInfo.emotion),
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(momentInfo.date,
                      style: FontStyles.semiBold16
                          .copyWith(color: ColorStyles.white)),
                  Text(momentInfo.year,
                      style: FontStyles.semiBold12
                          .copyWith(color: ColorStyles.white)),
                ],
              ),
              SvgPicture.asset(
                'assets/icons/weather${momentInfo.weather}.svg',
                height: 24,
                colorFilter: const ColorFilter.mode(
                    ColorStyles.white, BlendMode.srcATop),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(momentInfo.courseTitle,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style:
                      FontStyles.semiBold16.copyWith(color: ColorStyles.white)),
              const SizedBox(
                height: 8,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 4),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/defaultProfile.png',
                        height: 16,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(momentInfo.userName,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: FontStyles.regular12
                            .copyWith(color: ColorStyles.white)),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
