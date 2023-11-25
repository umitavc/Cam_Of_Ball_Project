part of 'product_add_cart_bloc.dart';

abstract class ProductAddCartEvent {}
 
final class Increment extends ProductAddCartEvent {}

final class Deincrement extends ProductAddCartEvent {}
