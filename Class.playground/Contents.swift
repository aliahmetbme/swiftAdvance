import Cocoa

// class

// struct -  class

// immutable
/*struct Game {
    private(set) var status: String = ""
    private(set) var currentPlayer: String = "ugur"
    private(set) var index: Int = -1
    
    mutating func moveNextPlayer() {
        if currentPlayer == "ahmet" {
            currentPlayer = "ugur"
        } else {
            currentPlayer = "ahmet"
        }
    }
}

var game = Game()
// başka şeylere atamak özellikleri değiştirmek istediğimiz zaman farklı farklı instance lar dolaşıcak etrafta
// immutability sıkınıtı çıkardı
// instance
var game2 = game
game2.moveNextPlayer() // copy on write



game.currentPlayer
game2.currentPlayer
// Heryerden erişilir güvenli değil, private yapmak lazım
// private oldu erişilmez
//game.currentPlayer = "ali"
//game.index = 19
*/


class Game {
    private(set) var status: String = ""
    private(set) var currentPlayer: String = "ugur"
    private(set) var index: Int = -1
    
    func moveNextPlayer() {
        if currentPlayer == "ahmet" {
            currentPlayer = "ugur"
        } else {
            currentPlayer = "ahmet"
        }
    }
}

// sadece 1 tane instance [*****]
// tüm değişimler sadece game üstünde olur
// propertyler var olduğu sürece değiştirilebilir let olmasına rağmen
let game = Game()

let game2 = game
game2.moveNextPlayer()

game.currentPlayer
game2.currentPlayer

// struct - class

// sürekli değişmeyecek, değiştirmek istemediğimiz şeyler olduğunda

struct User {
    var name:String
}

// memberwise initilizer
let user = User(name: "a")

var user2 = user
user2.name = "b"

// Class -> Dış etmenlere karşı yapımızı koruyabileceğimzi Storage, Network işlemleri , çok fonksiyonlu ve değişecek şeyler olur
// Struct -> User, Customer, Modeller, Cordinatlar vb basit şeylerde kullanılabilir




// memory -> value type, memoryde her değer için farklı yer tutar
// classda ref type vardır bu da sadece bir yer tutar


// identety operator

let game1 = Game()
let game3 = Game()
let game4 = game3

if (game1 === game3) {
    print("eşit")
}
if (game3 === game4){
    print("eşit")
}
