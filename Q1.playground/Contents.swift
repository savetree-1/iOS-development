//1. Zoo animal exercise
//Part 1: Create the base Animal class
//First, define a base class called Animal with properties and methods that all animals share.
//Define the class and properties: Create a class named Animal. Give it a name property of type String and
//a sound property of type String.
//1.
//Add an initializer: Define an init(name: String, sound: String) method to set these properties when a new
//animal is created.
//2.
//Create a method: Add a method makeSound() that prints a message combining the animal's name and its
//sound. For example, "Leo the lion says Roar!"
//3.
//Part 2: Create a subclass Dog
//Next, create a subclass that inherits from Animal and adds its own specific behavior.
//1. Inherit from Animal: Create a new class Dog that inherits from Animal using the colon (:) syntax.
//2. Add a new property: Give Dog a new property called breed of type String.
//Add an initializer: Define a new init for Dog that takes name, sound, and breed as arguments. Call the
//superclass's initializer (super.init) to set the inherited properties.
//3.
//4. Add a new method: Create a method wagTail() that prints a unique message for the dog.
//Override a method: Use the override keyword to create a custom implementation of
//the makeSound() method from the Animal superclass. In the Dog class's version, call super.makeSound() to
//access the base functionality, then add an extra print statement.
//5.
//Part 3: Create another subclass Cat
//Follow the same pattern to create another subclass, this time for a Cat.
//1. Inherit from Animal: Create a class Cat that inherits from Animal.
//2. Add a unique method: Add a method groom() that prints a message about the cat grooming itself.
//3. Override the initializer: Define an init that takes a name but hardcodes the sound property to "Meow".
//Part 4: Put it all together in a Playground
//Now, test your classes and inheritance in a Swift Playground.
//1. Create instances: Create an instance of each of your classes: Animal, Dog, and Cat.
//2. Call methods: Call the methods for each instance to see how inheritance and overriding work.
//Expected output
//After running this code in a Swift Playground, the output should be:
//Classes and Inheritance Questions
//Tuesday, 9 September 2025 8:22 PM
//the sound property to "Meow".
//Part 4: Put it all together in a Playground
//Now, test your classes and inheritance in a Swift Playground.
//1. Create instances: Create an instance of each of your classes: Animal, Dog, and Cat.
//Call methods: Call the methods for each instance to see how inheritance and
//overriding work.
//2.
//Expected output
//After running this code in a Swift Playground, the output should be:

class Animal {
    var name: String
    var sound: String
    
    init(name: String, sound: String) {
        self.name = name
        self.sound = sound
    }
    
    func makeSound() {
        print("\(name) the \(type(of: self)) says \(sound)!")
    }
}
class Dog: Animal {
    var breed: String
    
    init(name: String, sound: String, breed: String) {
        self.breed = breed
        super.init(name: name, sound: sound)
    }
    
    func wagTail() {
        print("\(name) the \(breed) wags its tail.")
    }
    override func makeSound() {
        super.makeSound()
        print("Woof!")
    }
}
class Cat: Animal {
    func groom() {
        print(name + " the Cat is grooming itself.")
    }
    init (name: String) {
        super.init(name: name, sound: "Meow")
    }
}
var animal = Animal(name: "Kitto", sound: "Meow")
animal.makeSound()
var dog = Dog(name: "Maxi", sound: "Arf", breed: "Labra")
dog.makeSound()
dog.wagTail()
var cat = Cat(name: "Billi")
cat.makeSound()
cat.groom()
