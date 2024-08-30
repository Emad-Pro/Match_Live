import 'package:flutter/material.dart';

import '../../../../../core/localizations/localizations_service.dart';
import '../../../../../core/responsive/responsive_text.dart';
import '../../../../../core/widget/custom_close_button.dart';
import '../../../model/last_news_model.dart';

class LastNewsShowDetailsNewsDailog extends StatelessWidget {
  const LastNewsShowDetailsNewsDailog({super.key, required this.news});
  final LastNewsModel news;
  @override
  Widget build(BuildContext context) {
    final checkLanguageAr = LocalizationsService.locale.languageCode == 'ar';
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Align(
                alignment: AlignmentDirectional.topStart,
                child: CustomCloseButton()),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  checkLanguageAr
                      ? news.titleAr ?? news.titleEn ?? ''
                      : news.titleEn ?? news.titleAr ?? '',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: getResponsiveFontSize(context, fontSize: 18),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                image: NetworkImage(news.image!),
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                checkLanguageAr
                    ? news.contentAr ?? news.contentEn ?? ''
                    : news.contentEn ?? news.contentAr ?? '',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 16)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
