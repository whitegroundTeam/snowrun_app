import 'package:doortoout/domain/rental/model/price.dart';
import 'package:doortoout/presentation/core/constants.dart';
import 'package:doortoout/utils/text_utils.dart';
import 'package:easy_localization/easy_localization.dart';

String priceText(Price price) {
  String formattedPrice = price.price.getOrCrash().toInt().toString().replaceAllMapped(
    RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
        (Match match) => '${match[1]},',
  );
  return "$formattedPrice${"${Constants.priceUnitPrefix}${capitalizeFirstLetter(price.priceUnit.name)}".tr()}";
}
