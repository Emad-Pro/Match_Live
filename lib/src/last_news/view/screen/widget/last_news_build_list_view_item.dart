import 'package:flutter/material.dart';

import '../../../../../core/responsive/responsive_text.dart';
import '../../../model/last_news_model.dart';
import 'last_news_show_details_news_dailog.dart';

class LastNewsBuildListViewtem extends StatelessWidget {
  const LastNewsBuildListViewtem({super.key, required this.news});
  final LastNewsModel news;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    contentPadding: EdgeInsets.all(0.0),
                    content: SizedBox(
                      width: double.infinity,
                      child: LastNewsShowDetailsNewsDailog(
                        news: news,
                      ),
                    ),
                  ));
        },
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).colorScheme.primary.withOpacity(0.2)),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            if (news.image != null)
              CircleAvatar(
                backgroundImage: NetworkImage(news.image!),
              ),
            if (news.image == null)
              const CircleAvatar(
                child: Icon(Icons.newspaper),
              ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          news.titleAr ?? news.titleEn ?? '',
                          //
                          style: TextStyle(
                              fontSize:
                                  getResponsiveFontSize(context, fontSize: 16)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Text(
                news.date ?? "",
                style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 14)),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
