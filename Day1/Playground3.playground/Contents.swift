var family:[String] = ["Donald", "Daisey", "Goofy", "Mickey"]

//for member in family {
//    print(member)
//}

//let range = 0...2
//
//for i in range {
//    print(family[i])
//}


print(family[2])
print(family.first)
print(family.last)
family = family.reverse()
print(family[2])
print(family.count)
print("")

for (idx, character) in family.enumerate() {
    print("\(idx + 1). \(character)")
}

print("")


func convertTemps(temps:[Float]) {
    for temp in temps {
        print("\(((temp - 32) * 5) / 9)")
    }
}

func getAverage(nums:[Int]) {
    var total: Int = 0
    for num in nums {
        total += num
    }
    print(total / nums.count)
}

convertTemps([90.0, 85.0, 83.5])
print("")
getAverage([100,90,100])