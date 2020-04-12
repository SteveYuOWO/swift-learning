import Cocoa

// 1.class
class Vehicle {
    // Stored Porperties
    var numberOfWheels = 0
    // Computed Properties
    var description: String {
        get {
            return "\(numberOfWheels) wheels"
        }
    }
    
    
}

let someVehicle: Vehicle = Vehicle()
print(someVehicle.description)

// 2.Inheritance
class Bicycle: Vehicle {
    override init() {
        // 不可以省略
        super.init()
        numberOfWheels = 100
    }
}

print(Bicycle().description)

// 3.Overriding a Property
class Car: Vehicle {
    var speed = 0.0
    override init() {
        super.init()
        numberOfWheels = 4
    }
    override var description: String {
        get {
            return "\(numberOfWheels) wheels \(speed) miles per hours"
        }
    }
}

print(Car().description)


// 4.Property Observers
// 属性观察
class ParentsCar: Car {
    override var speed: Double {
        willSet {
            print("I will set the speed")
            if newValue > 100 {
                print("小心超速呀")
            }
        }
        didSet {
            print("I setted the speed")
        }
    }
}
let car = Car()
car.speed = 200

// 5.method
class Counter {
    var count = 0
    func incrementBy(amount: Int) {
        count += amount
    }
    func resetToCount(count: Int) {
        self.count = count
    }
}

print(Counter().count)

