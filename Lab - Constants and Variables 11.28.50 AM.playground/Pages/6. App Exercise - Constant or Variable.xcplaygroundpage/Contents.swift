/*:
## App Exercise - Fitness Tracker: Constant or Variable?
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 There are all sorts of things that a fitness tracking app needs to keep track of in order to display the right information to the user. Similar to the last exercise, declare either a constant or a variable for each of the following items, and assign each a sensible value. Be sure to use proper naming conventions.
 
- Name: The user's name
- Age: The user's age
- Number of steps taken today: The number of steps that a user has taken today
- Goal number of steps: The user's goal for number of steps to take each day
- Average heart rate: The user's average heart rate over the last 24 hours
 */
let userName: String = "Ankush Rawat"
print("I chose userName as a constant because it is a name that the user will not change.")
let userAge: Int = 21
print("I chose userAge as a constant because it is a value that the user will not change.")
var stepsTakenToday: Int = 1005
print("I chose stepsTakenToday as a variable because the number of steps taken today will change over time taken by the person it varies.")
let goalNumberOfSteps: Int = 2000
print( "I chose goalNumberOfSteps as a constant because it is a value that the user will not change, changes timely.")
var averageHeartRate: Double = 75.0
print("I chose averageHeartRate as a variable because the average heart rate will change over time taken by the person it varies, it is a changing entitity.")

/*:
 Now go back and add a line after each constant or variable declaration. On those lines, print a statement explaining why you chose to declare the piece of information as a constant or variable.
 
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Types and Type Safety](@next)
 */
