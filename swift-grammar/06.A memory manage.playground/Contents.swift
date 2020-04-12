import Cocoa

// 1.Memory Management
// Automatic reference counting

class Bottle {}

func play(count: Int) {
    var left = Bottle()
    if count > 1 {
        var right = Bottle()
    }
}

// 2.Ownership
// weak references
// cycle reference
class Apartment {
    weak var person: Person?
    
}
class Person {
    weak var home: Apartment?
    
    func moveIn(apt: Apartment){
        home = apt
    }
}

// 3.Probabilty is a strong reference


// 4.same-Lifetime relationships

class Person2 {
    var card: CreditCard?
}

class CreditCard {
    unowned let holder: Person2?
    init(holder: Person2) {
        self.holder = holder
    }
}
