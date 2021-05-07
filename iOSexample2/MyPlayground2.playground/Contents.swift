import UIKit

var str = "Hello, playground"

let x: Int = 100
let s = MemoryLayout.size(ofValue: x)

let y: Float = 100
let p = MemoryLayout.size(ofValue: y)

let z: Double = 100
let q = MemoryLayout.size(ofValue: z)

let b: Bool = true
let c = MemoryLayout.size(ofValue: b)


//Optional Binding
var myString3:String?
myString3 = "Optional Binding"

if let yourString = myString3 {
    print("String = \(yourString)")
} else {
    print("Your string is nil")
}

var ints = [Int] (repeating: 10, count: 3)

var pos1 = ints[0]
print("Value of first element is \(pos1)")
print("Value of second element is \(ints[1])")
print("Value of third element is \(ints[2])")

func myFunction(name: String) -> String{
    let finalString: String = "Hello " + name
    return finalString
}

print(myFunction(name: "Guillermo"))


struct Person{
    var name:String
    var age:Int
}

var person = Person (name: "Guillermo", age: 22)

var person2 = person

print(person.name)

