import Cocoa

// instance = struct ve class tanımından oluşmuş bir nesne
class Person {
    let name: String
    
    init(name: String) {
        print("init called")
        self.name = name
    }
    
    deinit {
        print("DEINIT CALLED")
    }
}

var person2: Person?


var person: Person?
person = Person(name: "ali ahmet")
// ARC - automated reference counting
// person a yeni bir değer verince Person(name: "ali ahmet") boşta kalıyor ve memoryden siliniyor
person = Person(name: "ali")

