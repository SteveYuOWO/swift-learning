import Cocoa
//1.变量和常量
var languageName: String = "Swift"
let languageName2: String = "Swift"

//2.let线程安全
let year: Int = 2014
let isAwesome: Bool = true

//3.命名，Unicode
let π = 3.1415
let 🐮 = "牛"

//4.类型推导, NSString
let someString = "这看起来是一个字符串"

//5.遍历
for char in "Swift" {
    print(char)
}

//6.合并字符串
let china = "🇨🇳"
let video = "📹"
print(china + video)

//7.合并复杂字符串
let a = 3, b = 5
print("\(a)乘以\(b)等于\(a * b)")

//8.字符串+=
var variableString = "我"
variableString += "小明"
print(variableString)

//9.数组和字典 Array不是NSArray
let components = "~/Document/Steve".split(separator: "/")
print(components)

//10.数组
var names = ["小明", "小红"]
var numOfLegs = ["ant": 1, "snack": 0]
print(names)
print(numOfLegs)

//11.for in
for number in 1...5 {
    print(number)
}

//12.for in: Dictionaries
for (k, v) in numOfLegs {
    print(k, v)
}

//13.Modifying an Array
var shoppingList = ["1", "2", "3"]
print(shoppingList[0])
shoppingList.append("4")
shoppingList += ["1", "2"]
print(shoppingList[3...])

//14.Modifying a Dictionary
var numberOfLegs = ["qwq": "cry"]

numberOfLegs["蜘蛛"] = "273"
numberOfLegs["蜘蛛"] = "8"

print(numberOfLegs["999"])
