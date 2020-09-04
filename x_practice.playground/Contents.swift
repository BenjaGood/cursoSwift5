import UIKit

func welcome(user: String, age: Int) -> String{
    let text = "Hola, \(user), usted tiene \(age)"
    return text
}

welcome(user: "Benjamin", age: 18)

func treeDigitSum(a frirstNumber: Int, b secondNumber: Int, c thirdNumber: Int) -> Int{
    let result = frirstNumber + secondNumber + thirdNumber
    return result
}
 treeDigitSum(a: 12, b: 12, c: 5)

func payedGame(bankTransfer: Bool, ads: Bool, newMap: Bool, user: String) -> String{
    if bankTransfer == false {
       return "Lo siento, su compra no puedo ser procesada..."
    }else if bankTransfer == true && ads == true{
        return "Gracias por su compra \(user)!, ahora se le ha retirado los auncios!:)"
    }else if bankTransfer == true && newMap == true{
        return "Gracias por su compra \(user)!, disfrute los nuevos mapas!"
    }else{
       return "Error desconocido en alguna compra:(, por favor intentelo de nuevo"
    }
}

let message = payedGame(bankTransfer: true, ads: true, newMap: false, user: "ben1000496")
print(message)

let numbers = [32, 77, 4, 0, 1]
var numbersInOrder = numbers.sorted(by: <)

