import Cocoa

//1.? !
let numberOfLegs = ["蚂蚁": 6, "小蛇": 0, "小狗": 4, "章鱼": 9]
let prossibleLegCount:Int? = numberOfLegs["章鱼"]
if(prossibleLegCount == nil) {
    print("没有章鱼数据")
} else {
    let legCount = prossibleLegCount! // 强制解包
    print("章鱼为\(legCount)条腿")
}

//2.if
let a = 1
if a == 1 {
    print(1)
}

//3.switch
switch a {
case 1:
    print("wow, we do not need break")
case 2, 4, 5, 6:
    print("wow")
case 9...15:
    print("range 9 to 15")
default:
    print("lol")
}

//4.function
func sayHello(name: String = "Siri") {
    print("Hello, \(name)")
}
sayHello(name: "steve yu")
sayHello()

//5.Returning Values
func buildGreeting(name: String = "Siri") -> String{
    return "Hello " + name
}

let greeting = buildGreeting()
print(greeting)

//6.Returing Multiple Values
func refreshWebPage() -> (Int, String) {
    // ..try to refreshing..
    return (200, "Success")
}
print("Returning Multiple Values", refreshWebPage())

//7.Tuple
var num = (1, 2, 3)
print("Its tuple", num)

//8.Decomposing a Tuple
let (statusCode, message) = refreshWebPage()
print("StatusCode:", statusCode)
print("Message:", message)

//9.Named Values in a Tuple
func refreshWebPageWithName() -> (code: Int, message: String) {
    // ..try to refreshing..
    return (200, "Success")
}

let status = refreshWebPageWithName()

print("status code:", status.code, "message:", status.message)

//10.Closures
let greetingPrinter: () -> () = {
    print("Hello World")
}
let greetingPrinter2 = greetingPrinter
greetingPrinter2()

//11.Closures as Parameters
func rep(count: Int, task: () -> ()) {
    for _ in 0..<count {
        task()
    }
}

rep(count: 2, task: {
    print("repeat my world, kings")
})

//12.Trailing Closures
rep(count: 3) {
    print("trailing closures")
}
