/*:
## Exercise - Types and Type Safety
 
 Declare two variables, one called `firstDecimal` and one called `secondDecimal`. Both should have decimal values. Look at both of their types by holding Option and clicking the variable name.
 */
var firstDecimal=3.1
var secondDecimal=3.14


//:  Declare a variable called `trueOrFalse` and give it a boolean value. Try to assign it to `firstDecimal` like so: `firstDecimal = trueOrFalse`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var trueOrFalse:Bool=true
//trueOrFalse=false
print("This line will not compile as trueOrFalse is a boolean and firstDecimal is a decimal")

//:  Declare a variable and give it a string value. Then try to assign it to `firstDecimal`. Does it compile? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var stringValue="Hello World"
//stringValue=firstDecimal
print("This line will not compile as stringValue is a string and firstDecimal is a decimal, so assigning a string to a decimal will not work and gives an error")



//:  Finally, declare a variable with a whole number value. Then try to assign it to `firstDecimal`. Why won't this compile even though both variables are numbers? Print a statement to the console explaining why not, and remove the line of code that will not compile.
var wholeNumberValue=10
//firstDecimal=wholeNumberValue
print("Even though both are numbers but firstDecimal is a decimal and wholeNumberValue is a whole number, assigning a wholeNumberValue to a decimal will not work and gives an error.")


/*:
[Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Tracking Different Types](@next)
 */
