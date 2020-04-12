import Cocoa

// 1.Optional Type
var optionalNumber: Int?

// One Sentinel to Rule Them All

// Non-Optional Type is no ? type

// Unwarpping Optionals

func unwarpping(optionalNumber: Int?) {
    if optionalNumber != nil {
        print("unwarpping \(optionalNumber!)")
    } else {
        print("It's nil")
    }
}

unwarpping(optionalNumber: optionalNumber)
optionalNumber = 1
unwarpping(optionalNumber: optionalNumber)

// 2.Optional Binding

// continues optional
class Addr {
    var addr: String?
}
class People {
    var addr: Addr?
}

let alex = People()

// if any nil 
if alex.addr?.addr == nil {
    print("it's ok")
}
