import UIKit

//ARRAY
//CONJUNTOS
//DICCIONARIOS


//ARRAY
var someInts = [Int]()
someInts.count
someInts.append(31)
someInts.count
someInts = []
someInts.count

var someDoubles = Array(repeating: 3.141592, count: 3)
someDoubles.count

var moreDoubles = Array(repeating: 2.5, count: 4)

var aLotOfDoubles = someDoubles + moreDoubles
aLotOfDoubles.count

var shoppingList = ["Papas", "Pimiento", "Tortillas", "Cerdo", "Cebolla"]
shoppingList.count

var family = ["Padre", "Madre", "Yo", "Hermana"]
print("Los miembros de la familia son: \(family[0]), \(family[1]), \(family[2]), \(family[3])")

if shoppingList.isEmpty {
    print("La lista de la compra esta vacia")
}else{
    print("Hay suficiente comida")
}

shoppingList.append("Coca Cola")
shoppingList.count

shoppingList += ["Totopos", "Guacamoles", "Pico de Gallo"]
shoppingList.count

var firstElement = shoppingList[0]
shoppingList[0] = "Huevos"
shoppingList
shoppingList[4...6]
shoppingList[4...6] = ["Naranja", "Platano", "Mango"]
shoppingList

let pepper = shoppingList.remove(at: 1)
shoppingList

shoppingList.removeLast()
shoppingList

for item in shoppingList{
    print(item)
}

for (idx, item) in shoppingList.enumerated(){
    print("Item: \(idx + 1): \(item)")
}

//CONJUNTOS (SET)
var letters = Set<Character>()
letters.count
letters.insert("a")
letters.insert("h")
letters.insert("b")

var favouriteGames : Set<String> = ["Final Fantasy", "World of Warcraft", "Farcry"]
//NO HAY ORDEN EN LOS CONJUNTOS

favouriteGames.count
if favouriteGames.isEmpty{
   print("No hay juegos favoritos")
}

favouriteGames.insert("Metal Gear")

if let removedGame  = favouriteGames.remove("Farcry"){
    print("Se ah eliminado \(removedGame)")
}else{
    print("No se puede  eliminar este juego")
}

if favouriteGames.contains("Metal Gear"){
    print("Me encanta ese juego")
}

for vg in favouriteGames.sorted(){
    print(vg)
}

//RETO
var favoriteMovies : Set<String> = ["La vida de Pi", "Coraline", "Baby Driver"]
favoriteMovies.insert("Coraline")
favoriteMovies.count

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let primeNumbers: Set = [2,3,5,7]

//A union B = elementos que son o bien A, o bien de B o de los dos
oddDigits.union(evenDigits).sorted()

//A interseccion B = elementos que son de a la vez de A y de B
oddDigits.intersection(evenDigits)
evenDigits.intersection(primeNumbers).sorted()
oddDigits.intersection(primeNumbers).sorted()

//A  -  B = elementos que son de A, pero no son de B
oddDigits.subtracting(primeNumbers).sorted()

//A + B = (A-B) U (B-A)
oddDigits.symmetricDifference(primeNumbers).sorted()

let houseAnimals: Set = ["🦮", "🐈"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🦮", "🐈"]
let cityAnimals: Set = ["🐁", "🕊"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
//A y B son disjuntos si no tienen nada en común
farmAnimals.isDisjoint(with: cityAnimals)
