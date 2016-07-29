enum cycles: String {
    case Waiting
    case Soaking
    case Running
    case Rinsing
    case Spinning
    case Completed
    
}

enum waterTemps: String {
    case Hot
    case Cold
    case Warm
}

class WashingMachine {
    var running: Bool = false
    var currentCycle: cycles = cycles.Waiting
    var timer: Int = 0
    var waterTemp: waterTemps = waterTemps.Cold
    var brand:String = ""
    var modelNumber:String = ""
    var width:Int = 0
    var height:Int = 0
    var depth: Int = 0
    var weight: Int = 0
}


import UIKit

class MySubClass : UICollectionViewController {
    override func viewWillAppear(animated: Bool) {
        print("Animated: \(animated)")
    }
    
}

let a = MySubClass()
a.viewWillAppear(false)





class Card {
    enum Suite {
        case Spade, Heart, Diamond, Club
        
        static  var all: [Suite] {
            return [.Spade, .Heart, .Diamond, .Club]
        }
        
        func getEmoji() -> String {
            switch self {
            case .Heart:
                return "♥︎"
            case .Spade:
                return "♠︎"
            case .Diamond:
                return "♦"
            case .Club:
                return "♣︎"
            }
            
        }
    }
    
    enum Type2 {
        case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King, Ace
        
        static var all: [Type2] {
            return [Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King, Ace]
        }
    }
    
    var cardSuite: Suite?
    var cardType: Type2?
    
    init(type: Type2, suite: Suite) {
        self.cardType = type
        self.cardSuite = suite
    }
}

func createDeck() -> [Card] {
    var cards:[Card] = []
    for suite in Card.Suite.all {
        for type in Card.Type2.all {
            let card = Card(type: type, suite: suite)
            cards.append(card)
        }
    }
    
    return cards
}

func filterDeck(deck: [Card]) ->[Card] {
    var filteredDeck: [Card] = deck
    for card in deck {
        if (card.cardType != nil) {
            switch card.cardType! {
                case .Two, .Three, .Four, .Five, .Six, .Seven, .Eight:
                    break
                default:
                    filteredDeck.append(card)
            }
        }
    }
    
    return filteredDeck
}

var deck = createDeck()
print(deck[4].cardSuite?.getEmoji())

var pDeck1 = createDeck()
filterDeck(pDeck1)
var pDeck2 = createDeck()
filterDeck(pDeck2)
pDeck1.appendContentsOf(pDeck2)




//class Ride {
//    var active: Bool = true
//    var message: String?
//    var resume: Resume?
//    enum Resume {
//        case Date(NSDate)
//        case Interval(NSTimeInterval)
//    }
//    
//    func getStatus() {
//        switch resume {
//            case .Date(let date):
//                print("Ride is " + (active == true ? "Up" : "DOWN and will resume on \(date)"))
//        case Internval(;et interval):
//                print("Ride is " + (active == true ? "Up" : "DOWN and will be up again in \(interval) seconds"))
//        }
//    }
//}

