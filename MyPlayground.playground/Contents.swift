struct Person {
    var name: String
    var age: Int
    var id: String
    init(_ name: String, _ age: Int, _ id: String) {
        self.name = name
        self.age = age
        self.id = id
    }
    init()
    {
        name=""
        age=0
        id=""
    }
    func sayhello(){
        print("Hello \(name), GoodMorning dear")
    }
}
let ankit=Person()
print(ankit.age)
let ankush = Person("Ankush", 21, "M")
let anshul = Person("Anshul", 21, "M")
print(ankush.name)
ankush.sayhello()
print(anshul.name)


struct Car {
    var make: String
    var year: Int
    var color: String
    func startEngine(){
        print("Vroom Vroom")
    }
    func drive(){
        print("Moving Forward")
    }
    func park(){
        print("Parking")
    }
    func steer(){
        print("Steering")
    }
}
let firstCar = Car(make: "Toyota", year: 2020, color: "Red")
firstCar.startEngine()
firstCar.drive()
firstCar.park()
firstCar.steer()
let secondCar = Car(make: "Tesla", year: 2021, color: "Black")
secondCar.startEngine()
secondCar.drive()
secondCar.park()
secondCar.steer()
struct BankAccount {
    var balance: Int = 0
    var owner: String
    func print_(){
        print("The balance is \(balance) & owner is \(owner)")
    }
}
let user1 = BankAccount(owner: "Ankush")
let user2 = BankAccount(balance:569,owner: "Anshul")


struct Temperature {
    var celsius: Double
    var fahrenheit: Double {
        get {
            return (celsius * 9.0 / 5.0) + 32.0
        }
        set {
            celsius = (newValue - 32.0) * 5.0 / 9.0
        }
    }
}
let temperature1 = Temperature(celsius: 100.0)
print("Celsius: \(temperature1.celsius)")



struct Temp{
    var celsius: Double
    init(celsius: Double) {
        self.celsius = celsius
    }
    init(fahrenheit: Double){
        self.celsius = (fahrenheit - 32.0) * 5.0 / 9.0
    }
    init(kelvin: Double){
        self.celsius = kelvin - 273.15
    }
}
Temp(celsius: 100.0)
Temp(fahrenheit: 212.0)
Temp(kelvin: 300.0)
struct size{
    var width: Double
    var height: Double
    func area() -> Double{
        return width * height
    }
    func perimeter() -> Double{
        return 2 * (width + height)
    }
}
var size1 = size(width: 10.0, height: 20.0)
var size2 = size(width: 3.0, height: 4.0)
print("Area of size1 is \(size1.area())")
print("Perimeter of size1 is \(size1.perimeter())")
print("Area of size2 is \(size2.area())")
print("Perimeter of size2 is \(size2.perimeter())")


struct Counter{
    var count: Int = 2
    mutating func increment(){
        count += 1
    }
    mutating func decrement(){
        count -= 1
    }
    mutating func reset(){
        count=0
    }
    func count_(){
        print(count)
    }
}
var counter1 = Counter()
counter1.increment()
counter1.count_()
counter1.decrement()
counter1.count_()
counter1.reset()
counter1.count_()






struct Tempe{
    var celsius: Double
    var fahrenheit: Double{
        celsius * 9.0 / 5.0 + 32.0
    }
    var kelvin: Double{
        celsius+273.15
    }
}
var curr = Tempe(celsius: 100.0)
print(curr.fahrenheit)
print(curr.kelvin)

struct StepCounter{
    var totalSteps: Int = 0{
    willSet{
        print("About to set totalSteps to \(newValue)")
    }
    didSet{
        if totalSteps > oldValue{
            print("Just set totalSteps to \(oldValue)")
        }
    }
}
}
var stepCounter1 = StepCounter()
stepCounter1.totalSteps = 1000
stepCounter1.totalSteps = 2000

struct Size {
    @MainActor static var width: Double = 10
    @MainActor static var height: Double = 20
    @MainActor static func printWidth() {
        print("The width of the size is \(width)")
    }
    @MainActor static func printHeight() {
        print("The height of the size is \(height)")
    }
}
struct Car_{
    var color: String
    init(color: String) {
        self.color = color
    }
}
var myCar = Car_(color: "red")




for index in 1...5 {
    print("Hello, World! \(index)")
}
for letter in "ABDCEFG"{
    print("The letter is \(letter)")
}
for letter in "aeiou"{
    print("The vowel is \(letter)")
}
for i in 1...10{
    print("2 X \(i)\t is \t\(2*i)")
}
for (index,letter) in "ABCDEFG".enumerated( ){
    print(index,letter)
}

let fruits = ["Apple", "Banana","Mango", "Orange", "Grapes","Mango"]
for i in fruits{
    if i == "Mango"{
        print("Found \(i)")
        break
    }
}
for i in fruits where i == "Mango" {
    print("Found \(i)")
    break
}

let vehicles = ["Unicycle": 1, "Bicycle": 2, "Car": 4, "Motorcycle": 2]
for (vehicle,wheels) in vehicles {
    print("A \(vehicle) has \(wheels) wheels")
}
for counter in -10 ... 10 {
    print(counter)
    if counter == 0 {
        print("Zero!")
    }
} 

