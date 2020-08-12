import UIKit

let someString = "Soy un string cualquiera"

let multiLineString = """
 Soy Benjamin Gutierrez\
 Estamos haciendo el curso de Swift\
 xd
"""
// EL \ SIRVE PARA QUITAR EL "\N"

print(multiLineString)

let wiseWords = "\"La imaginacion es las importante que el saber\" -Albert Einstein"
let dolarSing = "\u{24}"
let blackHeart = "\u{2665}"
let heart = "\u{1F496}"

//Reto
let name = "Benjamin"
let flagMex = "\u{1F1F2}" + "\u{1F1FD}"
let text = """
 Hola, me llamo \(name)\
 Soy de Mexico \(flagMex)\
 y estoy tomando el curso de Swift 5 en platzi!
"""
var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("El string esta vacio")
}else{
    print("El string tiene valor")
}

var newSomeString = "Un caballo"
newSomeString += " y un carruaje"
newSomeString += " y un soldado"

let aString = "Juan Gabriel"
//aString += " y Ricardo Celis" <-- ERROR, PORQUE ES UNA LET (CONSTANTE)

var a = "A"
var b = "B"
print("a vale \(a), b vale \(b)")
b = a
print("a vale \(a), b vale \(b)")
b = "C"
print("a vale \(a), b vale \(b)")
a = "D"
print("a vale \(a), b vale \(b)")

let myName = "Benjamin"
for ch in name {
    print(ch)
}
print(name.count)

let exclamationMark : Character = "!"

let nameChars: [Character] =  ["B", "e", "n", "j", "a", "m", "i", "n"]
var nameString = String(nameChars)
nameString.append(flagMex)
print("\(nameString)")

let compoundName = "Ben" + "jamin" + "."

nameString.append(exclamationMark)
//APEND JUNTA STRINGS

let multiplier = 3
var message = "El producto de \(multiplier) x 3.5 da \(Double(multiplier)*3.5)"
message.append(exclamationMark)

let greeting = "Hola, ¿que tal?"
greeting[greeting.startIndex]
//greeting[greeting.endIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]

for idx in greeting.indices{
    print("\(greeting[idx])", terminator : "")
}

var welcome = "Hola"

welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " que tal", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))
welcome
let range = welcome.index(welcome.endIndex, offsetBy: -7)..<welcome.endIndex
welcome.removeSubrange(range)

greeting
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let firstPart = greeting[..<index]

let newString = String(firstPart)

let newGreeting = "Hola, soy Benjamín"
newGreeting.hasPrefix("Hola")
newGreeting.hasSuffix("n")

let collection = [
     "Act 1 Scene 1", "Act 1 Scene 2", "Act 1 Scene 3", "Act 1 Scene 4", "Act 1 Scene 5",
     "Act 2 Scene 1", "Act 2 Scene 2", "Act 2 Scene 3",
     "Act 3 Scene 1", "Act 3 Scene 2"
]
var act1SceneCount = 0
for scene in collection{
    if scene.hasPrefix("Act 1"){
        act1SceneCount += 1
    }
}

print("\n El numero de escenas del acto 1 es: \(act1SceneCount)")

//UNICODE

let ghost = "¡¡Fantasma!! 👻"

for codeUnit in ghost.utf8{
    print(codeUnit, terminator: " ")
}

print(" ")
for codeUnit in ghost.utf16{
    print(codeUnit, terminator: " ")
}

print(" ")
for codeUnit in ghost.unicodeScalars{
    print(codeUnit, terminator: " ")
}

