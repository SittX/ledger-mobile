import '../../domain/entities/account_entity.dart';

class AccountModel extends AccountEntity {
  static const String tableName = 'tbl_account';
  static const String fieldAccountId = 'account_id';
  static const String fieldTitle = 'title';
  static const String fieldDescription = 'description';
  static const String fieldCurrency = 'currency';
  static const String fieldAccountCategory = 'account_category';
  static const String fieldIsPrimary = 'is_primary';
  static const String fieldColor = 'color';
  static const String fieldIcon = 'icon';
  static const String fieldInitialBalance = 'initial_balance';
  static const String fieldCurrentBalance = 'current_balance';
  static const String fieldFinancialInstitutionId = 'financial_institution_id';
  static const String fieldInterestRate = 'interest_rate';
  static const String fieldInterestPayoutDate = 'interest_payout_date';
  static const String fieldInterestPercentage = 'interest_percentage';
  static const String fieldQuantity = 'quantity';
  static const String fieldPurchasePricePerUnit = 'purchase_price_per_unit';
  static const String fieldCurrentPricePerUnit = 'current_price_per_unit';

  AccountModel({
    required super.accountId,
    required super.title,
    required super.description,
    required super.currency,
    required super.accountCategory,
    required super.isPrimary,
    required super.color,
    required super.icon,
    required super.initialBalance,
    required super.currentBalance,
    required super.financialInstitutionId,
    required super.interestRate,
    required super.interestPayoutDate,
    required super.interestPercentage,
    required super.quantity,
    required super.purchasePricePerUnit,
    required super.currentPricePerUnit,
  });

  factory AccountModel.fromJson(Map<String, dynamic> json) {
    return AccountModel(
      accountId: json[fieldAccountId] as String,
      title: json[fieldTitle] as String,
      description: json[fieldDescription] as String,
      currency: json[fieldCurrency] as String,
      accountCategory: json[fieldAccountCategory] as String,
      isPrimary: json[fieldIsPrimary] as bool,
      color: json[fieldColor] as String,
      icon: json[fieldIcon] as String,
      initialBalance: (json[fieldInitialBalance] as num).toDouble(),
      currentBalance: (json[fieldCurrentBalance] as num).toDouble(),
      financialInstitutionId: json[fieldFinancialInstitutionId] as String,
      interestRate: (json[fieldInterestRate] as num).toDouble(),
      interestPayoutDate: DateTime.parse(
        json[fieldInterestPayoutDate] as String,
      ),
      interestPercentage: (json[fieldInterestPercentage] as num).toDouble(),
      quantity: json[fieldQuantity] as int,
      purchasePricePerUnit: (json[fieldPurchasePricePerUnit] as num).toDouble(),
      currentPricePerUnit: (json[fieldCurrentPricePerUnit] as num).toDouble(),
    );
  }

  factory AccountModel.fromEntity(AccountEntity entity) {
    return AccountModel(
      accountId: entity.accountId,
      title: entity.title,
      description: entity.description,
      currency: entity.currency,
      accountCategory: entity.accountCategory,
      isPrimary: entity.isPrimary,
      color: entity.color,
      icon: entity.icon,
      initialBalance: entity.initialBalance,
      currentBalance: entity.currentBalance,
      financialInstitutionId: entity.financialInstitutionId,
      interestRate: entity.interestRate,
      interestPayoutDate: entity.interestPayoutDate,
      interestPercentage: entity.interestPercentage,
      quantity: entity.quantity,
      purchasePricePerUnit: entity.purchasePricePerUnit,
      currentPricePerUnit: entity.currentPricePerUnit,
    );
  }

  AccountEntity toEntity() {
    return AccountEntity(
      accountId: accountId,
      title: title,
      description: description,
      currency: currency,
      accountCategory: accountCategory,
      isPrimary: isPrimary,
      color: color,
      icon: icon,
      initialBalance: initialBalance,
      currentBalance: currentBalance,
      financialInstitutionId: financialInstitutionId,
      interestRate: interestRate,
      interestPayoutDate: interestPayoutDate,
      interestPercentage: interestPercentage,
      quantity: quantity,
      purchasePricePerUnit: purchasePricePerUnit,
      currentPricePerUnit: currentPricePerUnit,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      fieldAccountId: accountId,
      fieldTitle: title,
      fieldDescription: description,
      fieldCurrency: currency,
      fieldAccountCategory: accountCategory,
      fieldIsPrimary: isPrimary,
      fieldColor: color,
      fieldIcon: icon,
      fieldInitialBalance: initialBalance,
      fieldCurrentBalance: currentBalance,
      fieldFinancialInstitutionId: financialInstitutionId,
      fieldInterestRate: interestRate,
      fieldInterestPayoutDate: interestPayoutDate.toIso8601String(),
      fieldInterestPercentage: interestPercentage,
      fieldQuantity: quantity,
      fieldPurchasePricePerUnit: purchasePricePerUnit,
      fieldCurrentPricePerUnit: currentPricePerUnit,
    };
  }
}
