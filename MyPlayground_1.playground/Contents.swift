var names = ["Alice", "Bob", "Charlie"]
for(index,value) in names.enumerated(){
    print(index)
    print(value)
}
for name in names{
    print(name)
}


var scores = ["Richard": 88, "John": 92, "Mary": 85]
for (name, score) in scores {
    print("\(name): \(score)")
}

var score = ["richard":98,"john":92,"mary":85]
for (name,value) in score{
    print("\(name): \(value)")
}
scores["Oli"] = 399
if let oldScore = scores["Oli"] {
    print("Oli's old score was \(oldScore)")
} else {
    print("Oli doesn't exist in the scores dictionary.")
}
if let oldValue = scores.updateValue(100, forKey: "Oli") {
        print("Oli's old score was \(oldValue)")
}
if let removedValue = scores.removeValue(forKey: "Oli") {
    print("Oli's score was removed, and it was \(removedValue)")
}
let keys = Array(scores.keys)
print(keys)

