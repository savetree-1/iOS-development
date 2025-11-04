//Typecasting & Inspection
class Animal {
    var name: String
    var sound: String
    init(name: String, sound: String) {
        self.name = name
        self.sound = sound
    }
    func makeSound() -> String {
        return sound
    }
    func eat(_ food: String) -> String {
        return "\(name) is eating \(food)"
    }
}
class Cat: Animal {
    var color: String = "black"
    init(color: String) {
        self.color = color
        super.init(name: "Whiskers", sound: "Meow")
    }
    override func makeSound() -> String {
        return "\(color) \(super.makeSound())"
    }
}
class Dog: Animal {
    var breed: String = "Labrador"
    init(breed: String) {
        self.breed = breed
        super.init(name: "Max", sound: "Woof")
    }
    override func makeSound() -> String {
        return "\(breed) \(super.makeSound())"
    }
}
func getDetails(pet : Animal)
{
    if pet is Cat
    {
        print ("The pet is ac cat")
    }
    else if pet is Dog
    {
        print ("The pet is a dog")
    }
    else
    {
        print("The pet is not listed")
    }
    if let cat = pet as? Cat
    {
        print("Cat color is \(cat.color)")
    }
    else if let dog = pet as? Dog
    {
        print( "Dog breed is \(dog.breed)")
    }
}
    
let myCat: Cat = Cat(color: "orange")
let myDog: Dog = Dog(breed: "Golden Retriever")
getDetails(pet: myCat) 
getDetails(pet: myDog) 

let items : [Any] = [5,4,3,2,"Hi"]

//Question Create a base class with property brand and a method bribe that prints the name, driving this vehicle. Create two subclasses, one is car and onde is bike, The car will hasve an extra property that holds the value of number of doors , bike will have an extra property.Create an array of type vehicle that stores different objects both for car and bike. Look through the array and use "is" to check to check the type of thev object.Use "as?" to downcast  and print the subclass specific property
//* Try using as exclamation ( force casting)  and observe the what will happen if casting gets failed

class Brand{
    func
}
