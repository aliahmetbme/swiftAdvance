import Cocoa

struct Game {
    // bu statusler game özel olduğu için ve dışalardan erişilmesini istemediğimiz için structun içinde tanımladık
    enum Status {
        case playing
        case paused
        case finished
    }
    
    struct Card {
        let letter: String
    }
    
    
    // game scopunda tanımlandı
    var status: Status = .paused
}

// global scope da tanımlandı ondan çakışma olmaz
let status = Game.Status.finished

// member - wise
let game = Game()

switch game.status {
case .playing:
    print("playing")
case .paused:
    print("paused")
case .finished:
    print("finished")
}

// typealias

typealias Status = Game.Status
// yukardaki kodu düzenleme şansı yoktur buraya özel bir atama yapılmıştır.

typealias 🃏 = Game.Card

🃏.init(letter: "X")
