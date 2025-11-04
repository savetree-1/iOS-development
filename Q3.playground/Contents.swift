//3. Shape Hierarchy
//Objective
//Your goal is to practice creating a class hierarchy by defining a base Shape class and then
//creating specific shape subclasses that inherit from it. This exercise will cover:
//• Defining a base class with properties and methods.
//• Creating subclasses that inherit from a superclass.
//• Overriding methods to customize behavior in a subclass.
//• Using the super keyword to call the superclass's implementation.
//Instructions
//Part 1: Create the Base Class
//1. Define a class called Shape.
//2. Give it a property named color of type String.
//3. Add an initializer init(color: String) that sets the color.

//Add a method named area() that returns a Double. For the base Shape class, this method
//should return 0.0, since a generic shape doesn't have a specific area.
//4.
//5. Add a method named printDescription() that prints the shape's color.
//Part 2: Create a Subclass (Square)


//1. Define a class called Square that inherits from Shape.
//2. Give it a new property called sideLength of type Double.
//Add an initializer init(color: String, sideLength: Double). In this initializer, call the
//superclass's initializer first to set the color, and then set the sideLength.


//3.
//Override the area() method. The new implementation should calculate and return the
//area of the square (sideLength * sideLength).
//4.


//Override the printDescription() method. Call the superclass's printDescription() first, and
//then add a line that prints the square's side length.


//5.
//Part 3: Create Another Subclass (Circle)
//1. Define a class called Circle that also inherits from Shape.
//2. Give it a new property called radius of type Double.
//Add an initializer init(color: String, radius: Double). Remember to call the superclass's
//initializer.
//3.
//Override the area() method. The new implementation should calculate and return the
//area of the circle (
//𝜋×𝑟𝑎𝑑𝑖𝑢𝑠2
//). You can use Double.pi for the value of 𝜋
//.
//4.

//Override the printDescription() method. Call the superclass's printDescription() method,
//and then add a line that prints the circle's radius.
//5.
//Part 4: Test Your Classes
//1. In your Playground, create an instance of each of your classes: Shape, Square, and Circle.
//2. Call the area() and printDescription() methods for each instance and observe the output.

class Shape {
    var color: String
    
    init(color: String) {
        self.color = color
    }
    
    func area() -> Double {
        return 0.0
    }
    func printDescription() {
        print("Shape color is: \(color)")
    }
}
class Square: Shape {
    var sideLength: Double
    
    init(color: String, sideLength: Double) {
        self.sideLength = sideLength
        super.init(color: color)
    }
    
    override func area() -> Double {
        return sideLength * sideLength
    }
    override func printDescription() {
        super.printDescription()
        print("Square side length is: \(sideLength)")
    }
}
class Circle: Shape {
    var radius: Double
    
    init(color: String, radius: Double) {
        self.radius = radius
        super.init(color: color)
    }
    
    override func area() -> Double {
        return .pi * radius * radius
    }
    override func printDescription() {
        super.printDescription()
        print("Circle radius is: \(radius)")
    }
}
var shape = Shape(color: "blue")
var square = Square(color: "green", sideLength: 10.0)
var circle = Circle(color: "yellow", radius: 5.0)
shape.printDescription()
print("Shape area: \(shape.area())")
square.printDescription()
print("Square area: \(square.area())")

