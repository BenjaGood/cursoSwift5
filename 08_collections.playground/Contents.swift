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

var gadgetsList = ["Smart Watch", "SmartTV", "Amazon Echo", "iPhone", "MacBook Pro", "AirPods Pro", "SmartBand"]
for item in gadgetsList{
    print(item)

for (idx, item) in gadgetsList.enumerated() {
    print("Item: \(idx + 1): \(item)")
}
