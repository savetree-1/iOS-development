import UIKit
let num = 10
let newstring = "Hello Name, My age is \(num)"
var greeting = "Hello, playground"
print(newstring)
let banner = """
          __,
         (           o  /) _/_
          `.  , , , ,  //  /
        (___)(_(_/_(_ //_ (__
                     /)
                    (/
        """
print("Hello World \r Swift")

print(newstring.isEmpty)
print("".isEmpty)
var firsname="Ankush"
var middlename="Khan"
var lastname="Rawat"
var name = firsname+" "+middlename+" "+lastname
print(lastname.count)
print(lastname.lowercased())
print(name.hasPrefix("ankush"))
if(name.contains("Rawat")){
    print("this is my name")
}
print(name.utf8.count)

let newpassword="Ankush@23_"
if(newpassword.count>=8 && newpassword.contains("@") && newpassword.contains("_")){
    print("Valid Password")
}
let chr="k"
switch chr {
    case "a","i","e","o","u":
        print("Vowel")
    default:
        print("Consonant")
}
print(name.prefix(5+1))
