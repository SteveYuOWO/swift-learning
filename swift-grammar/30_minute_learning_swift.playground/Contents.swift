import Cocoa

var str = "Hello, playground"
var flag = true
var num = 1

if(num == 1 && flag) {
    print("wow, num and flag is also")
}
print(str)

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

print(add(1, 2))

func larger<T: Comparable>(a: T, b: T) -> T{
    if(a > b) {
        return a
    }
    else {
        return b
    }
}

print(larger(a: 1, b: 2))
print(larger(a: "1", b: "abc"))

var words:[String] = ["Hello", "World"]
words.append("Yu")
words.append("Steve")
words[1] = "First"
print(words)

var word = words.sorted()

for item in word {
    print(item)
}

var cnt = 0
let words3 = words.map {
    "\(cnt): " + $0
}

print(words3)

struct Cat {
    var name: String?
    var age: Int?
    var color: String?
    
    func printInfo() {
        print("name: \(name!) age: \(age!) color: \(color!)")
    }
}



protocol Run {
    func run(speed: Int)
}

extension Cat: Run {
    func run(speed: Int) {
        print("\(name!) can run by \(speed) miles per minute")
    }
}

var littleCat = Cat(name: "mimi", age: 12, color: "yello")

littleCat.printInfo()
littleCat.run(speed: 100)

var a:String? = "123"

print(a!)

