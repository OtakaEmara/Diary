
import 'package:get/get_navigation/src/root/internacionalization.dart';

class Translation implements Translations{

  @override
  Map<String, Map<String, String>> get keys {
    return {
      'ar':{
        'diary':'مذكراتى',
        'write': 'اكتب ملاحظة',
        'editing': 'تعديل الملاحظة',
        'title': 'العنوان',
        'start': 'ابدأ بالكتابة هنا...',
        'search': 'بحث',
        'matches': 'مطابقين',
        'edit': 'تعديل',
        'delete': 'مسح',
        'deleting': 'مسح الملاحظة؟',
        'ok': 'تاكيد',
        'cancel': 'الغاء',
        'language': 'اختر لغه',
        'arabic': 'عربى',
        'english': 'إنجليزي',
        'yesterday': 'امس',
        'today': 'اليوم',
        'tomorrow': 'غدا'
      },
      'en': {
        'diary':'Diary',
        'write': 'Write note',
        'editing': 'Edit note',
        'title': 'Title',
        'start': 'Start typing here...',
        'search': 'Search',
        'matches': 'Matches',
        'edit': 'Edit',
        'delete': 'Delete',
        'deleting': 'Delete note?',
        'ok': 'ok',
        'cancel': 'cancel',
        'language': 'Choose language',
        'arabic': 'Arabic',
        'english': 'English',
        'yesterday': 'Yesterday',
        'today': 'Today',
        'tomorrow': 'Tomorrow'
      }
    };
  }
}