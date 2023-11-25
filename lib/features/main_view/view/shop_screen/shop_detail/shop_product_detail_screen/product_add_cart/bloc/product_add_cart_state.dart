class ProductAddCartState {
  final int count;

  ProductAddCartState({required this.count});

  ProductAddCartState copyWith({int? count}) {
    return ProductAddCartState(
      count: count ?? this.count,
    );
  }
}
