class CurrencyEntity {
  final String id;
  final String name;
  final String code; //"USD" (Standard 3-letter code)
  final String symbol;
  final String? flagIcon;

  CurrencyEntity({
    required this.id,
    required this.name,
    required this.code,
    required this.symbol,
    this.flagIcon,
  });

  CurrencyEntity copyWith({
    String? id,
    String? name,
    String? code,
    String? symbol,
    String? flagIcon,
  }) {
    return CurrencyEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      symbol: symbol ?? this.symbol,
      flagIcon: flagIcon ?? this.flagIcon,
    );
  }
}
