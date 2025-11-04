//import UIKit
//
////var age : Int
//var age : String? = "Ankush"
//age = nil
//if let new = age{
//print(new.count)
//}
//else{
//    print("String is empty")}
//
//
//let str = "5"
////let num = Int(str)
//let num = Int(str)!
//
//func username(for id : Int) -> String?
//{
//    if id==1
//    {
//        return "John"
//    }
//    else
//    {
//        return nil
//    }
//}
//struct Toddler {
//    var birthName : String
//    var monthsOld : Int
//    init?(brithnName: String, monthsOld: Int)
//    {
//            if monthsOld < 12 || monthsOld > 36
//        {
//                return nil
//            }
//        else
//        {
//            self.birthName = birthName
//            self.monthsOld = monthsOld
//        }
//    }
//}
struct Person {
    var age: Int
    var residence: Residence?4op
}

struct Residence {
    var address: Address?
}

struct Address {
    var buildingNumber: String?
    var streetName: String?
    var apartmentNumber: String?
}

let person = Person(age: 30)
if let theApartmentNumber = person.residence?.address?.apartmentNumber
{
    print( "They live in apartment number\(theApartmentNumber)")
}
else
{
    print("Its a nil")
}
