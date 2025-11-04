import UIKit
@MainActor func eatLunch() {
    guard lunchBoxPacked else {
        print("No lunch box!")
        return
    }
    guard !isHungry else {
        print("Not hungry!")
        return
    }
    print("Yum! Lunch!")
}
let lunchBoxPacked = true
var isHungry = true
let packedBox = true
var hungry = true
eatLunch()


func printSquareOf( of number: Int?) {
//    guard let number = number else {
//        print("Please provide a number.")
//        return
//    }
//    print("The square of \(number) is \(number * number)")
    
    //Now using if let
    if let number = number {
        print("The square of \(number) is \(number * number)")
    }
    else {
        print("Please provide a number.")
    }
}
//Swift requires you tob use return statement if a guard check fails
//If the optional you are un-wrapping has a value, you can use after the guard code finishes
//
//var myVar: Int? = 5
// if let unwrapped = myVar {
//    
//}
//guard let unwrapped_ = myVar else {
//    return
//}

func testGuard() {
    var myVar: Int? = 5
    guard let unwrapped = myVar else {
        print("Value is nil")
        return
    }
    print("Unwrapped value:", unwrapped)
}
testGuard()


func divide(_ number: Double, by divisor: Double)
{
    if divisor != 0
    {
        let result = number/divisor
        print( result)
    }
}

func divide_(_ number:Double, by divisor:Double)
{
    guard divisor != 0 else {
        return
    }
    let result = number/divisor
    print( result)
}
struct Goose {
    var eggs : [String]?
}
let goose = Goose( eggs: ["eggs1","eggs2","eggs3"])
if let eggs = goose.eggs {
    print(eggs)
}
func isGuardLay(){
    guard let eggs = goose.eggs else {
        print("No eggs")
        return
    }
    print("\(eggs.count)")
}


