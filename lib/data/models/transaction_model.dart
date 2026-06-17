import '../../domain/entities/transaction_entity.dart';

class TransactionModel extends TransactionEntity {
  static const String tableName = 'tbl_transaction';
  static const String fieldTransactionId = 'transaction_id';
  static const String fieldTitle = 'title';
  static const String fieldDescription = 'description';
  static const String fieldTransactionType = 'transaction_type';
  static const String fieldTransactionCategory = 'transaction_category';
  static const String fieldFromAccount = 'from_account';
  static const String fieldToAccount = 'to_account';
  static const String fieldAmount = 'amount';
  static const String fieldQuantity = 'quantity';
  static const String fieldPricePerUnit = 'price_per_unit';
  static const String fieldTransactionDate = 'transaction_date';

  TransactionModel({
    required super.id,
    required super.title,
    required super.description,
    required super.transactionType,
    required super.transactionCategory,
    required super.fromAccount,
    required super.toAccount,
    required super.amount,
    required super.quantity,
    required super.pricePerUnit,
    required super.transactionDate,
  });

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      id: json[fieldTransactionId] as String,
      title: json[fieldTitle] as String,
      description: json[fieldDescription] as String,
      transactionType: json[fieldTransactionType] as String,
      transactionCategory: json[fieldTransactionCategory] as String,
      fromAccount: json[fieldFromAccount] as String,
      toAccount: json[fieldToAccount] as String,
      amount: (json[fieldAmount] as num).toDouble(),
      quantity: json[fieldQuantity] as int,
      pricePerUnit: (json[fieldPricePerUnit] as num).toDouble(),
      transactionDate: DateTime.parse(json[fieldTransactionDate] as String),
    );
  }

  factory TransactionModel.fromEntity(TransactionEntity entity) {
    return TransactionModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      transactionType: entity.transactionType,
      transactionCategory: entity.transactionCategory,
      fromAccount: entity.fromAccount,
      toAccount: entity.toAccount,
      amount: entity.amount,
      quantity: entity.quantity,
      pricePerUnit: entity.pricePerUnit,
      transactionDate: entity.transactionDate,
    );
  }

  TransactionEntity toEntity() {
    return TransactionEntity(
      id: id,
      title: title,
      description: description,
      transactionType: transactionType,
      transactionCategory: transactionCategory,
      fromAccount: fromAccount,
      toAccount: toAccount,
      amount: amount,
      quantity: quantity,
      pricePerUnit: pricePerUnit,
      transactionDate: transactionDate,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      fieldTransactionId: id,
      fieldTitle: title,
      fieldDescription: description,
      fieldTransactionType: transactionType,
      fieldTransactionCategory: transactionCategory,
      fieldFromAccount: fromAccount,
      fieldToAccount: toAccount,
      fieldAmount: amount,
      fieldQuantity: quantity,
      fieldPricePerUnit: pricePerUnit,
      fieldTransactionDate: transactionDate.toIso8601String(),
    };
  }
}
