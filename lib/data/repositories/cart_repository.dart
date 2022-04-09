import 'package:delivery/domain/entities/product_entity.dart';

class CartRepository {
  List <ProductEntity> products = [];
 // CartDataStorage cartDataStorage = CartDataStorage();

   addProductToCart(ProductEntity product) {
    products.add(product);
    print(product);
    print(products);
  }

  removeProductFromCart(ProductEntity product){
    products.remove(product);
  }

   List <ProductEntity> getProductsOfCart() {
    return products;
  }

  int getTotalPrice(){
    int price = 0;
    for(int i = 0; i < products.length; i++){
        price += products[i].costOfProduct;
    }
    return price;
  }
}



// class CartDataStorage {
//   List <ProductEntity> products = [];
//
// }