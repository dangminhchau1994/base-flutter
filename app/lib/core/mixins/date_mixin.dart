import 'package:easy_localization/easy_localization.dart';

mixin DateMixin {
  String formatedDateDash(DateTime date) =>
      DateFormat('dd-MM-yyyy').format(date);
}
