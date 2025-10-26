import '../models/products.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '../backend/api_requests/api_calls.dart';

class ProductService {
  static Future<List<Product>> fetchProducts() async {
    final response = await GenerateCatalogueCall.call();
    final productsJson = getJsonField(response.jsonBody, r'$.products') as List?;
    if (productsJson == null) return [];
    return productsJson.map((e) => Product.fromJson(Map<String, dynamic>.from(e))).toList();
    
  }
}
