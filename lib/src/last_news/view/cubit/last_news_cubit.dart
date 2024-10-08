import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/last_news_model.dart';

part 'last_news_state.dart';
part 'last_news_cubit.freezed.dart';

class LastNewsCubit extends Cubit<LastNewsState> {
  LastNewsCubit() : super(const LastNewsState.initial());
  final List<LastNewsModel> news = [
    LastNewsModel(
        contentAr:
            'جدد الرئيس الفرنسي إيمانويل ماكرون، الخميس، تأكيده أن اعتقال مؤسس تطبيق بافيل دوروف ليست له دوافع سياسية.وأضاف ماكرون خلال مؤتمر صحفي في صربيا: "لم أكن على علم مطلقا بوصول السيد دوروف إلى فرنسا، وهذا أمر طبيعي تماما. هذا إجراء مستقل من جانب النظام القضائي الفرن".وقال مصدر في مكتب الادعاء العام في باريس، الخميس، إن الرئيس الفرنسي ووزارة الخارجية الفرنسية لم يتم إبلاغهما مسبقا بنية اعتقال دوروف.وأضاف المصدر أن التحقيق مع دوروف في فرنسا ليست له صلة بالولايات المتحدة.وقال محام يمثل دوروف، الخميس، إن تحميل موكله مسؤولية أي جرائم ارتكبت على التطبيق يشكل توجيه اتهامات غير منطقيةفرنسا ليست له صلة بالولايات المتحدة.وقال محام يمثل دوروف، الخميس، إن تحميل موكله مسؤولية أي جرائم ارتكبت على التطبيق يشكل توجيه اتهامات غير منطقيةفرنسا ليست له صلة بالولايات المتحدة.وقال محام يمثل دوروف، الخميس، إن تحميل موكله مسؤولية أي جرائم ارتكبت على التطبيق يشكل توجيه اتهامات غير منطقيةفرنسا ليست له صلة بالولايات المتحدة.وقال محام يمثل دوروف، الخميس، إن تحميل موكله مسؤولية أي جرائم ارتكبت على التطبيق يشكل توجيه اتهامات غير منطقيةفرنسا ليست له صلة بالولايات المتحدة.وقال محام يمثل دوروف، الخميس، إن تحميل موكله مسؤولية أي جرائم ارتكبت على التطبيق يشكل توجيه اتهامات غير منطقيةفرنسا ليست له صلة بالولايات المتحدة.وقال محام يمثل دوروف، الخميس، إن تحميل موكله مسؤولية أي جرائم ارتكبت على التطبيق يشكل توجيه اتهامات غير منطقيةفرنسا ليست له صلة بالولايات المتحدة.وقال محام يمثل دوروف، الخميس، إن تحميل موكله مسؤولية أي جرائم ارتكبت على التطبيق يشكل توجيه اتهامات غير منطقيةفرنسا ليست له صلة بالولايات المتحدة.وقال محام يمثل دوروف، الخميس، إن تحميل موكله مسؤولية أي جرائم ارتكبت على التطبيق يشكل توجيه اتهامات غير منطقيةفرنسا ليست له صلة بالولايات المتحدة.وقال محام يمثل دوروف، الخميس، إن تحميل موكله مسؤولية أي جرائم ارتكبت على التطبيق يشكل توجيه اتهامات غير منطقيةموكله مسؤولية أي جرائم ارتكبت على التطبيق يشكل توجيه اتهامات غير منطقيةموكله مسؤولية أي جرائم ارتكبت على التطبيق يشكل توجيه اتهامات غير منطقيةموكله مسؤولية أي جرائم ارتكبت على التطبيق يشكل توجيه اتهامات غير منطقية.',
        titleAr: 'مقتل "أبو شجاع".. سجال بين الداعية ',
        titleEn:
            'The killing of "Abu Shujaa"... A debate between the Palestinian preacher Mahmoud Al-Hasanat and Deri',
        publish: "CNN",
        image:
            'https://images.skynewsarabia.com/images/v1/2024/08/29/1738603/1200/675/1-1738603.jpg',
        date: "12:12"),
    LastNewsModel(
        contentAr:
            'جدد الرئيس الفرنسي إيمانويل ماكرون، الخميس، تأكيده أن اعتقال مؤسس تطبيق بافيل دوروف ليست له دوافع سياسية.وأضاف ماكرون خلال مؤتمر صحفي في صربيا: "لم أكن على علم مطلقا بوصول السيد دوروف إلى فرنسا، وهذا أمر طبيعي تماما. هذا إجراء مستقل من جانب النظام القضائي الفرن".وقال مصدر في مكتب الادعاء العام في باريس، الخميس، إن الرئيس الفرنسي ووزارة الخارجية الفرنسية لم يتم إبلاغهما مسبقا بنية اعتقال دوروف.وأضاف المصدر أن التحقيق مع دوروف في فرنسا ليست له صلة بالولايات المتحدة.وقال محام يمثل دوروف، الخميس، إن تحميل موكله مسؤولية أي جرائم ارتكبت على التطبيق يشكل توجيه اتهامات غير منطقية.',
        titleAr:
            'مقتل "أبو شجاع".. سجال بين الداعية الفلسطيني محمود الحسنات وأدرعي',
        titleEn:
            'The killing of "Abu Shujaa"... A debate between the Palestinian preacher Mahmoud Al-Hasanat and Deri',
        publish: "CNN",
        image:
            'https://images.skynewsarabia.com/images/v1/2024/08/29/1738603/1200/675/1-1738603.jpg',
        date: "12:12"),
    LastNewsModel(
        contentAr:
            'جدد الرئيس الفرنسي إيمانويل ماكرون، الخميس، تأكيده أن اعتقال مؤسس تطبيق بافيل دوروف ليست له دوافع سياسية.وأضاف ماكرون خلال مؤتمر صحفي في صربيا: "لم أكن على علم مطلقا بوصول السيد دوروف إلى فرنسا، وهذا أمر طبيعي تماما. هذا إجراء مستقل من جانب النظام القضائي الفرن".وقال مصدر في مكتب الادعاء العام في باريس، الخميس، إن الرئيس الفرنسي ووزارة الخارجية الفرنسية لم يتم إبلاغهما مسبقا بنية اعتقال دوروف.وأضاف المصدر أن التحقيق مع دوروف في فرنسا ليست له صلة بالولايات المتحدة.وقال محام يمثل دوروف، الخميس، إن تحميل موكله مسؤولية أي جرائم ارتكبت على التطبيق يشكل توجيه اتهامات غير منطقية.',
        titleAr:
            'مقتل "أبو شجاع".. سجال بين الداعية الفلسطيني محمود الحسنات وأدرعي',
        titleEn:
            'The killing of "Abu Shujaa"... A debate between the Palestinian preacher Mahmoud Al-Hasanat and Deri',
        publish: "CNN",
        image:
            'https://images.skynewsarabia.com/images/v1/2024/08/29/1738603/1200/675/1-1738603.jpg',
        date: "12:12"),
    LastNewsModel(
        contentAr:
            'جدد الرئيس الفرنسي إيمانويل ماكرون، الخميس، تأكيده أن اعتقال مؤسس تطبيق بافيل دوروف ليست له دوافع سياسية.وأضاف ماكرون خلال مؤتمر صحفي في صربيا: "لم أكن على علم مطلقا بوصول السيد دوروف إلى فرنسا، وهذا أمر طبيعي تماما. هذا إجراء مستقل من جانب النظام القضائي الفرن".وقال مصدر في مكتب الادعاء العام في باريس، الخميس، إن الرئيس الفرنسي ووزارة الخارجية الفرنسية لم يتم إبلاغهما مسبقا بنية اعتقال دوروف.وأضاف المصدر أن التحقيق مع دوروف في فرنسا ليست له صلة بالولايات المتحدة.وقال محام يمثل دوروف، الخميس، إن تحميل موكله مسؤولية أي جرائم ارتكبت على التطبيق يشكل توجيه اتهامات غير منطقية.',
        titleAr:
            'مقتل "أبو شجاع".. سجال بين الداعية الفلسطيني محمود الحسنات وأدرعي',
        titleEn:
            'The killing of "Abu Shujaa"... A debate between the Palestinian preacher Mahmoud Al-Hasanat and Deri',
        publish: "CNN",
        image:
            'https://images.skynewsarabia.com/images/v1/2024/08/29/1738603/1200/675/1-1738603.jpg',
        date: "12:12"),
    LastNewsModel(
        contentAr:
            'جدد الرئيس الفرنسي إيمانويل ماكرون، الخميس، تأكيده أن اعتقال مؤسس تطبيق بافيل دوروف ليست له دوافع سياسية.وأضاف ماكرون خلال مؤتمر صحفي في صربيا: "لم أكن على علم مطلقا بوصول السيد دوروف إلى فرنسا، وهذا أمر طبيعي تماما. هذا إجراء مستقل من جانب النظام القضائي الفرن".وقال مصدر في مكتب الادعاء العام في باريس، الخميس، إن الرئيس الفرنسي ووزارة الخارجية الفرنسية لم يتم إبلاغهما مسبقا بنية اعتقال دوروف.وأضاف المصدر أن التحقيق مع دوروف في فرنسا ليست له صلة بالولايات المتحدة.وقال محام يمثل دوروف، الخميس، إن تحميل موكله مسؤولية أي جرائم ارتكبت على التطبيق يشكل توجيه اتهامات غير منطقية.',
        titleAr:
            'مقتل "أبو شجاع".. سجال بين الداعية الفلسطيني محمود الحسنات وأدرعي',
        titleEn:
            'The killing of "Abu Shujaa"... A debate between the Palestinian preacher Mahmoud Al-Hasanat and Deri',
        publish: "CNN",
        image:
            'https://images.skynewsarabia.com/images/v1/2024/08/29/1738603/1200/675/1-1738603.jpg',
        date: "12:12")
  ];
}
