import 'package:ledger_mobile/domain/entities/currency_code_entity.dart';

class CurrencyModel extends CurrencyEntity {
  static const String tableName = 'tbl_currency';
  static const String fieldCurrencyId = 'currency_id';
  static const String fieldName = 'name';
  static const String fieldCode = 'code';
  static const String fieldSymbol = 'symbol';
  static const String fieldFlagIcon = 'flag_icon';

  CurrencyModel({
    required super.id,
    required super.name,
    required super.code,
    required super.symbol,
    super.flagIcon,
  });

  factory CurrencyModel.fromJson(Map<String, dynamic> json) {
    return CurrencyModel(
      id: json[fieldCurrencyId] as String,
      name: json[fieldName] as String,
      code: json[fieldCode] as String,
      symbol: json[fieldSymbol] as String,
      flagIcon: json[fieldFlagIcon] as String?,
    );
  }

  factory CurrencyModel.fromEntity(CurrencyEntity entity) {
    return CurrencyModel(
      id: entity.id,
      name: entity.name,
      code: entity.code,
      symbol: entity.symbol,
      flagIcon: entity.flagIcon,
    );
  }

  CurrencyEntity toEntity() {
    return CurrencyEntity(
      id: id,
      name: name,
      code: code,
      symbol: symbol,
      flagIcon: flagIcon,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      fieldCurrencyId: id,
      fieldName: name,
      fieldCode: code,
      fieldSymbol: symbol,
      fieldFlagIcon: flagIcon,
    };
  }
}
