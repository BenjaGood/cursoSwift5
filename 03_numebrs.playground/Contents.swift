import UIKit

let age : UInt8 = 19

let minValue = Int64.min
let maxValue = Int64.max

let f1 : Float = 3.14159265
let f2: Double = 3.14159265

let meaningOfLife = 42 //Int
let pi = 3.14159 //Double
let anotherPi = 3 + 0.14159 //Double

let demicalInteger = 17
let binatyInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

let decimalDouble = 12.1875
let exponentDounle = 1.21875e1
let hexadecimalBouble1 = 0xC.3p0

let paddedDouble = 123.456
let someNumber = 000000097.54

let oneMillon = 1_000_000
let justMoreThanAMillion = 1_000_000.000_000_1

//ERRORES DE TIPO DE DATO
//let cannotBeNegative: UInt8 = -1
//let tooBig: UInt8.max +1

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let onePlusTwoThounsand = twoThousand + UInt16(one)

let three = 3
let decimalNumber = 0.14159
let piNumb = Double(three) + decimalNumber

let integerPi = Int(piNumb)

typealias AudioSample = UInt32
var maxApmlitude = AudioSample.max


