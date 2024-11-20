import Foundation

class Product {
    var name: String
    var price: Double
    var quantity: Int

    init(name: String, price: Double, quantity: Int) {
        self.name = name
        self.price = price
        self.quantity = quantity
    }
}

let inventory = [
    Product(name: "Laptop", price: 999.99, quantity: 5),
    Product(name: "Smartphone", price: 499.99, quantity: 10),
    Product(name: "Tablet", price: 299.99, quantity: 0),
    Product(name: "Smartwatch", price: 199.99, quantity: 3)
]

func calculateTotalInventoryValue(products: [Product]) -> Double {
    return products.reduce(0.0) { $0 + ($1.price * Double($1.quantity)) }
}

func findMostExpensiveProduct(products: [Product]) -> String {
    guard let mostExpensive = products.max(by: { $0.price < $1.price }) else {
        return "No products available"
    }
    return mostExpensive.name
}

func isProductInStock(products: [Product], productName: String) -> Bool {
    return products.contains { $0.name == productName }
}

func sortProducts(products: [Product], by criteria: String, descending: Bool = true) -> [Product] {
    switch criteria {
    case "price":
        return products.sorted { descending ? $0.price > $1.price : $0.price < $1.price }
    case "quantity":
        return products.sorted { descending ? $0.quantity > $1.quantity : $0.quantity < $1.quantity }
    default:
        print("Invalid sorting criteria. Please use 'price' or 'quantity'.")
        return products
    }
}

let totalValue = calculateTotalInventoryValue(products: inventory)
print("""
Total inventory value: \(String(format: "%.2f", totalValue))
""")

let mostExpensiveProduct = findMostExpensiveProduct(products: inventory)
print("""
Most expensive product: \(mostExpensiveProduct)
""")

let isHeadphonesInStock = isProductInStock(products: inventory, productName: "Headphones")
print("""
Is 'Headphones' in stock? \(isHeadphonesInStock)
""")

let sortedByPriceDesc = sortProducts(products: inventory, by: "price", descending: true)
print("""
Products sorted by price (descending):
""")
for product in sortedByPriceDesc {
    print("  - \(product.name): price \(product.price), quantity \(product.quantity)")
}

let sortedByQuantityAsc = sortProducts(products: inventory, by: "quantity", descending: false)
print("""
Products sorted by quantity (ascending):
""")
for product in sortedByQuantityAsc {
    print("  - \(product.name): price \(product.price), quantity \(product.quantity)")
}

