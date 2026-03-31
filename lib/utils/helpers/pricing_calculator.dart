class TPricingCalculator {
  /// -- Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// -- Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// -- Calculate tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  /// -- Get tax rate based on location
  static double getTaxRateForLocation(String location) {
    // In real app: fetch from API or database
    switch (location.toLowerCase()) {
      case 'usa':
        return 0.10; // 10%
      case 'eu':
        return 0.20; // 20%
      case 'india':
        return 0.18; // 18%
      default:
        return 0.10; // default fallback
    }
  }

  /// -- Get shipping cost based on location
  static double getShippingCost(String location) {
    // In real app: calculate via shipping API
    switch (location.toLowerCase()) {
      case 'usa':
        return 5.00;
      case 'eu':
        return 10.00;
      case 'india':
        return 3.00;
      default:
        return 5.00;
    }
  }

  /// -- Sum all cart values and return total amount (from image)
  // static double calculateCartTotal(CartModel cart) {
  //   return cart.items
  //       .map((e) => e.price ?? 0)
  //       .fold(0, (previousPrice, currentPrice) => previousPrice + currentPrice);
  // }
}

/// Example Cart Model (needed for the above function)
// class CartModel {
//   final List<CartItem> items;

//   CartModel({required this.items});
// }

// class CartItem {
//   final double? price;

//   CartItem({this.price});
// }