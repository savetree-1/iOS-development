//Create a base class vehicle with property brand and a method drive that prints the brand, drive this vehicle. Create two subclass bike and car. Car will have extra property that holds the value of number of doors, bike will have an extra property (type) that holds the value of type of bike (e.g. Mountain bike). Create an array of type vehicle that stores different objects both for cars and bike, loop through array and use 'is' to check type of the object. Use 'as?' to downcast and print the subclass specific properties. *Try using 'as!' for force casting and observe what will happen if the casting will fail.
class Vehicle {
    var brand: String
    init(brand: String) {
        self.brand = brand
    }
    func drive() {
        print("Driving \(brand)")
    }
}
class Car: Vehicle {
    var doors: Int
    init(brand: String, doors: Int) {
        self.doors = doors
        super.init(brand: brand)
    }
}
class Bike: Vehicle {
    var type: String
    init(brand: String, type: String) {
        self.type = type
        super.init(brand: brand)
    }
}
let car1 = Car(brand: "Toyota", doors: 4)
let car2 = Car(brand: "Tesla", doors: 2)
let bike1 = Bike(brand: "Yamaha", type: "Sports")
let bike2 = Bike(brand: "Trek", type: "Mountain")
let vehicles: [Vehicle] = [car1, bike1, car2, bike2]
for v in vehicles {
    v.drive()
    if v is Car {
        if let car = v as? Car {
            print("→ It's a Car with \(car.doors) doors.")
        }
    } else if v is Bike {
        if let bike = v as? Bike {
            print("→ It's a \(bike.type) bike.")
        }
    }
}
////Force Casting
//for v in vehicles {
//        let car = v as! Car
//    print("Force Casted  Successful Car: \(car.brand) with \(car.doors) doors.")
//}


