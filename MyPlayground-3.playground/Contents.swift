//class Person{
//    let name: String = "Abkhaz"
//    
////    init(name: String) {
////        self.name=name
////    }
//    func sayHello() -> String {
//        return "Hello, my name is \(name)."
//    }
//}
//var person = Person()
//print(person.sayHello())
//print(person.name)
//////var person = Person(name: "Alice")
////print(person.sayHello())
////print(person.name)
////v//ar person2 = Person(name: "Bob")
////print(person2.sayHello())
////print(person2.name)
//
//
//class Vehicle{
//    var currentSpeed: Int = 0
//    var description: String {
//        return "current speed is \(currentSpeed)"
//    }
//    func makeSound() -> String {
//        return "No specific"
//    }
//    func myVehicle() -> String {
//        return "Currently no vehicle"
//    }
//}
//class Car : Vehicle {
//
//    override func makeSound() -> String {
//        return "Vroom Vroom"
//    }
////    override var description: String {
////        super.description + " in gear"
////    }
//    override func myVehicle() -> String {
//        return "My vehicle is car"
//    }
//}
//let someVehicle: Vehicle = Vehicle()
//print("Vehicle description: \(someVehicle.description)")
//print("Vehicle sound: \(someVehicle.makeSound())")
//let myCar: Car = Car()
//print("Car description: \(myCar.description)")
//print("Car sound: \(myCar.makeSound())")
//print("Vehicle type \(myCar.myVehicle())")
//myCar.currentSpeed = 30
//print("Car current speed: \(myCar.currentSpeed)")
//
class Person{
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Student: Person {
    var favoriteSubject: String
    init(name : String, favoriteSubject: String) {
        self.favoriteSubject = favoriteSubject
        super.init(name: name)
    }
}

