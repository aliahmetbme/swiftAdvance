import Cocoa

struct Product: Decodable {
    let name: String
    let price: Price
    // let price: String
    
    enum CodingKeys: CodingKey {
        case name
        case price
    }
    // Custom Coding
/*   
    enum PriceCodingKey: CodingKey {
        case amount
        case currency
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        
        let priceContainer = try container.nestedContainer(keyedBy: PriceCodingKey.self, forKey: CodingKeys.price)
        
        let amount = try priceContainer.decode(Int.self, forKey: PriceCodingKey.amount)
        let currency = try priceContainer.decode(Int.self, forKey: PriceCodingKey.currency)
        self.price = "\(amount) \(currency)"
    }
 
 // bu da encode içindi
 init(from encoder: Encoder) throws {
     let container = try encoder.container(keyedBy: CodingKeys.self)
     self.name = try container.decode(String.self, forKey: .name)
     
     let priceContainer = try container.nestedContainer(keyedBy: PriceCodingKey.self, forKey: CodingKeys.price)
     
     let amount = try priceContainer.decode(Int.self, forKey: PriceCodingKey.amount)
     let currency = try priceContainer.decode(Int.self, forKey: PriceCodingKey.currency)
     self.price = "\(amount) \(currency)"
 }
 */
}

struct Price: Decodable {
    let amount: Int
    let currency: String
}

let json = """
[
    {
        "name": "Lorem",
        "price": {
            "amount":100,
            "currency":"$"
        }
    },
    {
        "name": "Ipsum",
        "price": {
            "amount":4,
            "currency":"£"
        }
    }
]
"""

let object = try? JSONDecoder().decode([Product].self, from: json.data(using: .utf8)!)

// "nil\n" başarısız demek
