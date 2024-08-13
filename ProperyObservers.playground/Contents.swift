import Cocoa

struct Person {
    var fullName: String {
        didSet {
            nameChanged()
        }
        willSet {
            print("\nfull  name is changig from \(fullName) to \(newValue)")
        }
    }
    var age: Int {
        // güncellendikten sonra çalışır
        didSet {
            print("new age \(age)")
            ageChanged()
        }
        willSet {
            print("age is changig from \(fullName) to \(newValue)")
        }
    }
    
    init(fullName: String, age: Int) {
        self.fullName = fullName
        self.age = age
    }
    
    // MARK: - Prrivate
    private var birthYear: Int = 0
    
    private func nameChanged() {
        print("name Has changed")
    }
    
    private mutating func ageChanged() {
        birthYear = 2024 - age
        print(birthYear)
    }
}


var person = Person(fullName: "ugur", age: -1)
person.fullName = "kilic"
person.age = 38
// initiliarlarda didSet willSet çağrılmaz
