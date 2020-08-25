import UIKit

func greeting(person: String) -> String{
    let greet = "Hola \(person) 😁!"
    return greet
}

greeting(person: "Benjamin Gutierrez")
greeting(person: "Edgar")
greeting(person: "Juagn Gbriel")


func sayHelloWorld() -> String {
    return "Hello World"
}

func greetingx(person: String, isMale: Bool) -> String{
    if isMale{
        return "Bienvenido Caballero \(person)"
    }else{
        return "Bienvenida Señorita \(person)"
    }
}

greetingx(person: "Benjamin", isMale: true)
greetingx(person: "Sofia", isMale: false)

//RETO
func ageGretting(name: String, isFemale: Bool, age: Int) -> String{
    if isFemale && age >= 18{
        return "Sea Usted bienvenida \(name)"
    }else if isFemale && age < 18{
        return "Hola  \(name) 😁"
    }
    else if  !isFemale && age >= 18{
        return "Sea Usted bienvenido \(name)"
    }else{
        return "Hola \(name)😎"
    }
}

ageGretting(name: "Benjamin", isFemale: false, age: 18)

func grett2(person: String){
    print("Hola \(person)")
}

grett2(person: "Benjamin")
grett2(person: "Edgar")

func printAndCount(string : String) -> Int{
    print(string)
    return string.count
}
printAndCount(string: "Hola que tal")

func printWithoutCounting(string: String){
    let _ = printAndCount(string: string)
}
printAndCount(string: "Hola que tal")
printWithoutCounting(string: "Hola que tal")

func minMax(array:[Int]) -> (min: Int, max: Int)?{
    
    if array.isEmpty{
        return nil
    }
    
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]{
    if value < currentMin{
        currentMin = value
    }else if value > currentMax{
        currentMax = value
    }
   }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [4,-6,3,2,5,4059890,0])
print("Los valores son \(bounds!.min) y \(bounds!.max)")

minMax(array: [])

func someFunction (f1 firstParamName : Int, f2 secondParamName : Int = 6){
    //firstParamName es de tipo Int
    //secondParamName es de tipo Int
    print(firstParamName + secondParamName)
}
someFunction(f1: 5, f2: 1)
someFunction(f1: 90)

func greeting3(_ person: String, from hometown: String) -> String{
    return "Hola, \(person), un placer que nos visites desde \(hometown)"
}

greeting3("Benjamin", from: "Mexico")

func mean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers{
        total += number
    }
    return total / Double(numbers.count)
}

mean(1,2,3,4,5)
mean(1,2,3,4,5,6,7,8,9,10.90)

func prom(_ numbers: Double...) -> Double {
    var result = numbers / numbers
    return result
}
