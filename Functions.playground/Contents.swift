import Cocoa

// Functions

func greetMe() {
    let text = "Hello"
    print(text)
}

func greetMe(name: String, age: Int) -> String{
    // functionların içindeki parametleri constanttır değişmez
    // Cannot assign to value: 'name' is a 'let' constant
    // name = "Ali"
    let text = "Hello"
    return ("\(name) \(age)")
}

let x: String = greetMe(name: "ALİ", age: 24)


// inout parametreler
func increamnet(a: inout Int, by b: Int) {
    // inout parametreler değişebiliyor içerde
    a += b
}
var value = 3

increamnet(a: &value, by: 5)

func multiply(a: Int, b: Int) -> Int {
    return a * b
}


let myFunction: (Int,Int) -> Int = multiply
// (Int,Int) -> Int, String, Int, Bool gibi type dir.

func square(a: Int) -> Int {
    return a * a
}

func minusOne(a: Int) -> Int {
    return a - 1
}

func donustur (list: [Int], fun: (Int) -> Int) -> [Int] {
    var retList: [Int] = []
    
    for item in list {
        let value = fun(item)
        retList.append(value)
    }
    return retList
}

donustur(list: [45,56,67,67,89,590,190], fun: square)
donustur(list: [45,56,67,67,89,590,190], fun: minusOne)

enum NewDirection {
    case north, west, south, east
    
    func printNames() {
        switch self {
        case .north:
            print("N")
        case .west:
            print("W")
        case .south:
            print("S")
        case .east:
            print("E")
        }
    }
}


let e = NewDirection.east
e.printNames()
