import Cocoa

enum Direction {
    case north
    case west
    case east
    case south
}

var direction: Direction = .east
direction = .west

var secondDirection = Direction.south

// Butun caseleri yazdık bundan dolayı default'a gerek yok
// Enum'a yeni bir case ekledindiği zaman switch de güncellenir ve eklenen değerleri kullanmak kolay olur
switch direction {
case .north:
    break
case .west:
    break
case .east:
    break
case .south:
    break
}

enum Gender: String {
    // default olarak atanır değişebilir
    // case male = "male", female = "female", nonbinary = "nonbinary"
    case male = "M", female = "F", nonbinary = "N"
}
if let gender = Gender(rawValue: "F") {
    print(gender)
}


enum UserRole: Int {
    // row değerleri vardır 0'dan başlıyor
    // 0 1 2
    // default olarak atanır değişebilir
    //case admin = 0, user = 1, restricted = 2
    case admin
    case user
    case restricted
}

if let role = UserRole(rawValue: 1) {
    // optional olarak buluyor, geçersiz bir integerda patlamasın diye
    print(role)
}


// Associeted Value

enum UsersRoles {
    case admin(level: Int)
    case user
    case restricted(reason: String)
    
    var isBanned: Bool {
        switch self {
        case .restricted(let reason) where reason == "banned":
            return true
        default:
            return false
        }
    }
}

let usersroles = UsersRoles.restricted(reason: "banned")
print(usersroles)
usersroles.isBanned

switch usersroles {
case .admin(let level) where level > 1:
    print("upper admin")
case .admin:
    print("admin")
case .user:
    print("user")
case .restricted(let reason) where reason == "banned":
    print("Banned")
case .restricted(let reason):
    print("restricted but can cont ")
}

// switche bunun yerine where kullılıer
//if reason == "banned" {
//    print("restricted beacuse \(reason)")
//} else {
//    print("restricted but can cont ")
//}


// Optional & Enum

let age: Int? = 30

switch age {
case .none:
    print("nil")
case .some(let value):
    print(value)
}















