import 'package:ledger_mobile/data/models/account_model.dart';
import 'package:ledger_mobile/data/models/currency_model.dart';
import 'package:ledger_mobile/data/models/transaction_model.dart';

final accountTable =
    """
  CREATE TABLE ${AccountModel.tableName} (
    ${AccountModel.fieldAccountId} TEXT PRIMARY KEY,
    ${AccountModel.fieldTitle} TEXT,
    ${AccountModel.fieldDescription} TEXT,
    ${AccountModel.fieldCurrency} TEXT,
    ${AccountModel.fieldAccountCategory} TEXT,
    ${AccountModel.fieldIsPrimary} INTEGER,
    ${AccountModel.fieldColor} TEXT,
    ${AccountModel.fieldIcon} TEXT,
    ${AccountModel.fieldInitialBalance} REAL,
    ${AccountModel.fieldCurrentBalance} REAL,
    ${AccountModel.fieldFinancialInstitutionId} TEXT,
    ${AccountModel.fieldInterestRate} REAL,
    ${AccountModel.fieldInterestPayoutDate} TEXT,
    ${AccountModel.fieldInterestPercentage} REAL,
    ${AccountModel.fieldQuantity} INTEGER,
    ${AccountModel.fieldPurchasePricePerUnit} REAL,
    ${AccountModel.fieldCurrentPricePerUnit} REAL
  );
""";

final transactionTable =
    """
  CREATE TABLE ${TransactionModel.tableName} (
    ${TransactionModel.fieldTransactionId} TEXT PRIMARY KEY,
    ${TransactionModel.fieldTitle} TEXT,
    ${TransactionModel.fieldDescription} TEXT,
    ${TransactionModel.fieldTransactionType} TEXT,
    ${TransactionModel.fieldTransactionCategory} TEXT,
    ${TransactionModel.fieldFromAccount} TEXT,
    ${TransactionModel.fieldToAccount} TEXT,
    ${TransactionModel.fieldAmount} REAL,
    ${TransactionModel.fieldQuantity} INTEGER,
    ${TransactionModel.fieldPricePerUnit} REAL,
    ${TransactionModel.fieldTransactionDate} TEXT
  );
""";

final currencyTable =
    """
  CREATE TABLE ${CurrencyModel.tableName} (
    ${CurrencyModel.fieldCurrencyId} TEXT PRIMARY KEY,
    ${CurrencyModel.fieldName} TEXT,
    ${CurrencyModel.fieldCode} TEXT,
    ${CurrencyModel.fieldSymbol} TEXT,
    ${CurrencyModel.fieldFlagIcon} TEXT
  );
""";
