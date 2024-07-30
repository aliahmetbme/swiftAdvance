import Cocoa


class Calculator<T: Numeric> {
    func add(numOne: T, numTwo: T) -> T {
        return numOne + numTwo
    }
    
    func multiply(numOne: T, numTwo: T) -> T {
        return numOne * numTwo
    }
}


let calculator = Calculator<Int>()
calculator.add(numOne: 2, numTwo: 4)
calculator.multiply(numOne: 2, numTwo: 4)

let calculator2 = Calculator<Double>()
calculator2.add(numOne: 2, numTwo: 4)
calculator2.multiply(numOne: 2.0, numTwo: 4)

let calculator3 = Calculator<Float>()
calculator3.add(numOne: 2.0, numTwo: 4)

class Pair<T, U> {
    private(set) var first: T
    private(set) var second: U
    
    init(first: T, second: U) {
        self.first = first
        self.second = second
    }
}


let pair = Pair(first: "ali", second: true)
let pairy = Pair(first: 4, second: ["aay","aaa","ss"])
