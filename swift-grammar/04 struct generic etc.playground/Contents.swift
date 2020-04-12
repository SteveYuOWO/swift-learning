import Cocoa

// 1.structures
struct node {
    var val: Int
}

struct Point {
    var x, y: Double
}

var point = Point(x: 0.0, y: 1.0)

// 2.storaged data
// not inherited
// structured value passed
// reference passed
struct Size {
    var width, height: Double
}

struct Rect {
    var size: Size
    
    var area: Double {
        return size.width * size.height
    }
}

// 3.Mutating a Structure
struct Point2 {
    var x, y: Double
    mutating func moveToTheRightBy(dx: Double) {
        x += dx
    }
}

let point3 = Point2(x: 1, y: 1)

//point.moveToTheRightBy(10) wrong

var point2 = Point2(x: 1, y: 1)
point2.moveToTheRightBy(dx: 10)
print(point2.x)

// 4.Enumerations
enum Day: Int {
    case Monday = 1
    case Tuesday = 2
    case Wednesday = 3
    case Thursday = 4
    case Friday = 5
    case Saturday = 6
    case Sunday = 7
}

let day = Day.Monday
let dayNumber = day.rawValue

print(day, dayNumber)

// 5.Row Values
enum IllegalCharacter: Character {
    case Tab = "\t"
    case NewLine = "\n"
}

enum Direction {
    case North, South, East, West
}

var dir = Direction.North
print(dir)

// 6.Associated Values
enum TrainStatus {
    case Ontime
    case Delayed(Int)
}

var status = TrainStatus.Ontime
var status2 = TrainStatus.Delayed(12)

// 7.Initializers
enum TrainStatus2 {
    case OnTime, Delay(Int)
    init() {
        self = .OnTime
    }
    var description: String {
        switch self {
            case .OnTime:
                return "arrive on time"
            case .Delay(let minutes):
                return "delay \(minutes) time"
        }
    }
}

// 8.Nested Types
class Train {
    enum Status {
        case OnTime, Delayed(Int)
        init() {
            self = .OnTime
        }
        var description: String {
            switch self {
                case .OnTime:
                    return "arrive on time"
                case .Delayed(let minutes):
                    return "delay \(minutes) time"
            }
        }
    }
}

// 9.Extensions for class and basic type and
extension Size {
    mutating func increaseByFactor(factor: Double) {
        self.width *= factor
        self.height *= factor
    }
}

extension Int {
    func repetitions(task: () -> ()) {
        for i in 0...self {
            task()
        }
    }
}

5.repetitions {
    print("steveyu")
}

// 10.A Non-Generic Stack Structure
struct IntStack {
    var elements = Array<Int>()
    
    mutating func push(element: Int) {
        elements.append(element)
    }
    
    mutating func pop() -> Int {
        return elements.removeLast()
    }
}

var sta = IntStack()
sta.push(element: 10)
sta.push(element: 20)
print(sta.pop())

// 11.Generic
struct Stack<T> {
    var elements = Array<T>()
    
    mutating func push(element: T) {
        elements.append(element)
    }
    
    mutating func pop() -> T {
        return elements.removeLast()
    }
}

var s = Stack<String>()
s.push(element: "123")
s.push(element: "3443")
s.push(element: "333")
print(s.pop())
print(s.pop())

extension + {
    
}

