import Cocoa

struct Person {
    var fullName: String
    var age: Int
    var country = "Turkey"
    
    init(fullName: String, age: Int, country: String = "Turkey") {
        self.fullName = fullName
        self.age = age
        self.country = country
    }
    
    func whereAreYou() {
        print("I am in \(country)")
    }
    
    mutating func yearPassed() {
        age += 1
        // Left side of mutating operator isn't mutable: 'age' is a 'let' constant
        // mutating gerekiyor ama her zaman kullanılmaz
        // bir şeylerin sürekli değişmesi gerektiği zamanda struct kulllanma
    }
}

var loggedInPerson = Person(fullName: "Ali Ahmet Erdogdu", age: 24)
print(loggedInPerson)

loggedInPerson.yearPassed()
// instance -> bir structan oluşmuş bir örnek

// structın otomatik initilizer ı var
// bütün propertilere değer atanmış olması lazım initilizerda
// proportilerin değişmesi biraz sıkıntı
// copy on write mekanizması çalışır
// var person2 = person
// As soon as one of the copies is modified, a true copy of the data is made, ensuring that the modification does not affect the other instances.

struct MyStruct {
    var value: Int
}

var a = MyStruct(value: 10)
var b = a  // No actual copying here, 'a' and 'b' share the same data

b.value = 20  // Now the data is copied, and 'b' has its own copy of the data

print(a.value)  // 10
print(b.value)  // 20
