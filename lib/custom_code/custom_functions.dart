import '../providers/product_provider.dart';
import '../models/product_model.dart';

Future<List<Map<String, dynamic>>> fetchProductsForFlutterFlow(ProductProvider provider) async {
  await provider.fetchProducts();
  return provider.products.map((p) => p.toJson()).toList();
}
