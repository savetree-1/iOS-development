//2. A Game with Spaceships and Fighters
//1. Defining a Base Class:
//• Create a class with properties and methods that represent a general entity.
//Example: A Spaceship class with properties like name, health, position, and methods
//like moveLeft(), moveRight(), and wasHit().
//•
//2. Creating a Subclass: • Define a new class that inherits from the base class using the colon : symbol.
//• The subclass inherits all properties and methods of the superclass.
//Example: A Fighter class inheriting from Spaceship, adding specific properties
//like weapon and remainingFirePower, and potentially overriding methods.
//•
//3. Instantiating and Interacting with Objects: • Create instances of both the base class and the subclass.
//Demonstrate how subclass instances can access inherited properties and methods, as
//well as their own unique properties and methods.
//•
//Example Exercise Scenario: A Game with Spaceships and Fighters
//• Define a Base Class (e.g., Spaceship):
//• Create a class named Spaceship.
//• Give it properties like name (String), health (Int, default to 100), and position (Int,
//default to 0).
//• Add methods like moveLeft() and moveRight() to adjust the position.
//• Include a wasHit() method that decrements health and prints a game-over
//message if health drops to or below zero.
//• Create an Instance of the Base Class:
//• Instantiate Spaceship and set its name.
//• Call the moveLeft(), moveRight(), and wasHit() methods to observe their effects on
//the instance's properties.
//• Define a Subclass (e.g., Fighter):
//• Create a class named Fighter that inherits from Spaceship using the colon
//syntax: class Fighter: Spaceship.
//• Add new properties specific to Fighter, such as weapon (String)
//and remainingFirePower (Int).
//• Implement a custom initializer for Fighter that calls the superclass's initializer
//(super.init(...)) to set inherited properties and then initializes its own unique
//properties.
//• Add a method like fire() that reduces remainingFirePower and prints a message if
//there's no power left.
//
//• Add new properties specific to Fighter, such as weapon (String)
//and remainingFirePower (Int).
//• Implement a custom initializer for Fighter that calls the superclass's initializer
//(super.init(...)) to set inherited properties and then initializes its own unique
//properties.
//• Add a method like fire() that reduces remainingFirePower and prints a message if
//there's no power left.
//• Create an Instance of the Subclass:
//• Instantiate Fighter using its custom initializer.
//• Observe that Fighter instances automatically possess the properties and methods
//inherited from Spaceship.
//• Call methods from both the Fighter class (e.g., fire()) and the
//inherited Spaceship class (e.g., moveRight()).
//• Attempt to access Fighter-specific properties on a Spaceship instance and explain
//why this is not possible.

class Spaceship {
    var name: String
    var health: Int
    var position: Int
    init(name: String, health: Int = 100, position: Int = 0) {
        self.name = name
        self.health = health
        self.position = position
    }
    func moveLeft() {
        position -= 1
    }
    func moveRight() {
        position += 1
    }
    func wasHit() {
        health -= 1
        if health <= 0 {
            print("GAME OVER: \(name) was destroyed!")
        }
    }
}
class Fighter: Spaceship {
    var weapon: String
    var remainingFirePower: Int
    init(name: String, weapon: String, remainingFirePower: Int) {
        self.weapon = weapon
        self.remainingFirePower = remainingFirePower
        super.init(name: name)
    }
    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        }
        else {
            print("No more fire power!")
        }
    }
}
var spaceship = Spaceship(name: "Enterprise")
spaceship.health
spaceship.position
spaceship.moveRight()
spaceship.health = 0
//print(spaceship.remainingFirePower)
print("Above statement will give an error because remainingFirePower is not a property of Spaceship. It is not possible to access Fighter-specific properties on a Spaceship instance.")
var fighter = Fighter(name: "X-Wing", weapon: "Lasers", remainingFirePower: 3)
fighter.fire()

