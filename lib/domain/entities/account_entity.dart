class AccountEntity {
  final String accountId;
  final String title;
  final String description;
  final String currency; // (FK)
  final String accountCategory; // (FK)
  final bool isPrimary;
  final String color;
  final String icon;

  final double initialBalance;
  final double currentBalance;

  final String financialInstitutionId;
  final double interestRate;
  final DateTime interestPayoutDate;
  final double interestPercentage;

  final int quantity;
  final double purchasePricePerUnit;
  final double currentPricePerUnit;

  AccountEntity({
    required this.accountId,
    required this.title,
    required this.description,
    required this.currency,
    required this.accountCategory,
    required this.isPrimary,
    required this.color,
    required this.icon,
    required this.initialBalance,
    required this.currentBalance,
    required this.financialInstitutionId,
    required this.interestRate,
    required this.interestPayoutDate,
    required this.interestPercentage,
    required this.quantity,
    required this.purchasePricePerUnit,
    required this.currentPricePerUnit,
  });

  AccountEntity copyWith({
    String? accountId,
    String? title,
    String? description,
    String? currency,
    String? accountCategory,
    bool? isPrimary,
    String? color,
    String? icon,
    double? initialBalance,
    double? currentBalance,
    String? financialInstitutionId,
    double? interestRate,
    DateTime? interestPayoutDate,
    double? interestPercentage,
    int? quantity,
    double? purchasePricePerUnit,
    double? currentPricePerUnit,
  }) {
    return AccountEntity(
      accountId: accountId ?? this.accountId,
      title: title ?? this.title,
      description: description ?? this.description,
      currency: currency ?? this.currency,
      accountCategory: accountCategory ?? this.accountCategory,
      isPrimary: isPrimary ?? this.isPrimary,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      initialBalance: initialBalance ?? this.initialBalance,
      currentBalance: currentBalance ?? this.currentBalance,
      financialInstitutionId:
          financialInstitutionId ?? this.financialInstitutionId,
      interestRate: interestRate ?? this.interestRate,
      interestPayoutDate: interestPayoutDate ?? this.interestPayoutDate,
      interestPercentage: interestPercentage ?? this.interestPercentage,
      quantity: quantity ?? this.quantity,
      purchasePricePerUnit: purchasePricePerUnit ?? this.purchasePricePerUnit,
      currentPricePerUnit: currentPricePerUnit ?? this.currentPricePerUnit,
    );
  }
}
