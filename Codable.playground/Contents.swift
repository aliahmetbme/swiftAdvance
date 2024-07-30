import Cocoa

// Codable = TypeAlias  Decoblei Encodable Conform edebiliyor

// Encodable -> karşı tarafa gönderece şekilde ayarlama
// Decodable -> Gelen datayı çözümlemek

// - JSON - //

struct Person: Encodable, Decodable {
    let name: String
    let surname: String
    let age: Int? // Gelmeme durumunda hata almamak adına
}


struct CodingPerson: Encodable, Decodable {
    let firstName: String
    let lastName: String
    let birthday: Date
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case birthday = "date_of_birth"
    }
    
    
}

// camelCase
// snake_case
// Swift kendi conventionlarda camelCase kullanıyor ama genelde backendden gelen veriler snake_case olabiliyor bunu coding keyler ile çözüyor.


let person = Person(name: "Ali Ahmet", surname: "Erdoğdu", age: 30)

// Encode edecek class
let jsonEncoder = JSONEncoder()


do {
    // Data -> diske yazılabilecek byte buffer
    let data: Data =  try jsonEncoder.encode(person)
} catch {
    print(error)
}


let jsonDecoder = JSONDecoder()

// date decoding
let dateFormetter = DateFormatter()
dateFormetter.dateFormat = "dd.MM.yyyy"
jsonDecoder.dateDecodingStrategy = .formatted(dateFormetter)
   // .secondsSince1970


do {
    // fazla data gelirse sorun olmaz
    let data = """
    {
        "first_name": "AYŞE",
        "last_name": "Güler",
        "date_of_birth":"20.12.1999"
    }
    """.data(using: .utf8)!
    let person  = try jsonDecoder.decode(CodingPerson.self, from: data)
    print(person)
} catch  {
    print(error)
}
