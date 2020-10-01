import UIKit

struct Fahrenheit {
    var temperature : Double
   init(){
        self.temperature = 32
    }
}
 var f1 = Fahrenheit()

struct Celsius{
    var temperature : Double
    
    init(fromFarenheit farenheit: Double) {
        self.temperature = (farenheit - 32)/1.8
    }
    init(fromKelvin kelvin : Double) {
        self.temperature = kelvin - 273.15
    }
    init(_ celsius : Double) {
        self.temperature = celsius
    }
}

let boilingPointOfWater = Celsius(fromFarenheit: 212)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)

struct Color{
    let red, green, blue : Double
    init(red: Double, green: Double, blue: Double){
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white : Double){
        self.red = white
        self.green = white
        self.blue = white
    }
}

let magenta = Color(red: 1, green: 0, blue: 1)
let halfGrey = Color(white: 0.5)
let green = Color(red: 0, green: 1, blue: 0)

let bodyTemperature = Celsius(37)

class SurveyQuestion{
    var text : String
    var response : String?
    
    init(text: String) {
        self.text = text
    }
    func ask(){
        print(text)
    }
}

let q1 = SurveyQuestion(text: "¿Te gustan los tacos?")
q1.ask()
q1.response = "Si, me encantan"
