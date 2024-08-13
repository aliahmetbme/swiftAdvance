import Cocoa

struct Person {
    var fullName: String
    // değiştirilmesini imkansız kıldım
    private(set) var age: Int
    // 'Person' initializer is inaccessible due to 'private' protection level
    // age e dışardan erişilsin istemiyoru
    
    init(fullName: String) {
        self.fullName = fullName
        self.age = 30
    }
    
    mutating func yearPassed() {
        self.age += 1
        logYearPassed()
    }
    
    private func logYearPassed() {
        print("year")
    }
}

var person = Person(fullName: "Ali")


// person.age += 1
// yaşı bir arttıran bir logic olduğunu düşünelim ama bu güvenli değil çünkü istendiği kadar arttırılabilir.
(2024 - person.age)
