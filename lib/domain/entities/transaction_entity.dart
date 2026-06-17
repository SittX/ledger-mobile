class TransactionEntity {
  final String id; // (UUID With DateTime ??)
  final String title;
  final String description;
  final String transactionType; // (Income, Expense, Transfer)
  final String transactionCategory;
  final String fromAccount; // (FK)
  final String toAccount; // (FK)
  final double amount;

  final int quantity;
  final double pricePerUnit;
  final DateTime transactionDate;

  TransactionEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.transactionType,
    required this.transactionCategory,
    required this.fromAccount,
    required this.toAccount,
    required this.amount,
    required this.quantity,
    required this.pricePerUnit,
    required this.transactionDate,
  });

  TransactionEntity copyWith({
    String? id,
    String? title,
    String? description,
    String? transactionType,
    String? transactionCategory,
    String? fromAccount,
    String? toAccount,
    double? amount,
    int? quantity,
    double? pricePerUnit,
    DateTime? transactionDate,
  }) {
    return TransactionEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      transactionType: transactionType ?? this.transactionType,
      transactionCategory: transactionCategory ?? this.transactionCategory,
      fromAccount: fromAccount ?? this.fromAccount,
      toAccount: toAccount ?? this.toAccount,
      amount: amount ?? this.amount,
      quantity: quantity ?? this.quantity,
      pricePerUnit: pricePerUnit ?? this.pricePerUnit,
      transactionDate: transactionDate ?? this.transactionDate,
    );
  }
}
