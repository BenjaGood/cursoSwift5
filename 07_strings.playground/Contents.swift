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
