import 'package:flutter/material.dart';
import '../models/products.dart';
import '../services/product_service.dart';

class ProductProvider extends ChangeNotifier {
  List<Product> _products = [];
  bool _isLoading = false;
  String? _error;

  List<Product> get products => _products;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchProducts() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _products = await ProductService.fetchProducts();
    } catch (e) {
      _error = e.toString();
      _products = [];
    }

    _isLoading = false;
    notifyListeners();
  }
}
