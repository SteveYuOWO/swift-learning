import Cocoa


// 1.closure
var clients = ["Android", "Apple", "SanSang"]

clients.sort(by: {
    (a, b) -> Bool in
        return a < b
})

clients.sort(by: { a, b in a < b })

clients.sort(by: { $0 < $1})
print(clients)

// 2.functional programming
var words = ["grateness", "grass", "hello", "wow"]
print(words.filter({ $0.hasSuffix("ss") }).map({ $0.uppercased() }).reduce("HULK") {"\($0) \($1)"})

// 3.Captures
func sum(numbers: [Int]) {
    var sum = 0
    numbers.map({ sum += $0 })
    print(sum)
}
sum(numbers: [1, 2, 3, 4, 5])
x
// 4.ARC Objects

//sc.textFile("data/testdata.txt").flatMap(_.split(" ")).map((_,1)).reduceByKey(_+_).foreach(println)
