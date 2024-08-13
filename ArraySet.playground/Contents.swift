import Cocoa

// array

let numnber: [Int] = [1, 2, 3, 4, 5, 6, 77, 887]

// Array Literal
var student: [String] = ["Ali", "Ayşe", "Fatma", "Ahmet"]
student.append("Fatma")
student.insert("Sema", at: 2)
student += ["v", "dd", "ddfdfdfd"]
student.append(contentsOf: ["rtyrty"])

// subscript syntax
if student.count >= 3 {
    student[3]
}

if student.isEmpty {
    print("No student")
}


let items = Array(repeating: "Uğur", count: 120)
// insertte aynısı varsa eklemiyor
