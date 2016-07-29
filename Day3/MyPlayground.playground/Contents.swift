//: Playground - noun: a place where people can play

import Foundation


//let ourHappyCollection = ["Trees", "Waterfall", "Happy Clouds", "Flock of happy birds"]
//
//let ourShorterCollection = ourHappyCollection.filter { (happyString) ->
//    Bool in
//    return happyString.lowercaseString.containsString("happy")
//}
//
//print(ourShorterCollection.description)




let arrOfInts: [Int] = [1,4,5,6,101,200,300,400,5,6,22,55,555,88,4000]

let lessInts = arrOfInts.filter { (num) ->
    Bool in
    return num > 100
}


print(lessInts)

func before(val1: String, val2: String) -> Bool {
    return val1.characters.count < val2.characters.count
}

var strings: [String] = ["longest", "small", "longer"]
strings.sortInPlace(before)
print(strings)

var newStrings = strings.map{ (string) -> Int in
    return string.characters.count
}

print(newStrings)

var totalLengths = strings.reduce(0) { (sum, string) -> Int in
    return sum + string.characters.count
}

print(totalLengths)