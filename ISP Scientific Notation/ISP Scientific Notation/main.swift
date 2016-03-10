import Darwin
import Foundation

var userInput : Int = 0
let errorMessage = "Please provide a valid integer:"

print("\(errorMessage)")

repeat {
    if let input = readLine(stripNewline: true) {
        if let inputAsInteger = Int(input) {
            if inputAsInteger > 1 {
                
                //Getting users number
                var numberP = String(inputAsInteger)
                
                // get the string length
                var countP = numberP.characters.count
                print("Count of characters is \(countP)")
                
                // loop over each character in a string
                for c in numberP.characters {
                    print("\(c)")
                }
                
                // get the exponent
                var exponentP = countP - 1
                
                // get the divisor
                var divisorP = pow(Float(10), Float(exponentP))
                
                // get the dividend
                var dividendP = Float(numberP)!
                
                // get the coefficient for scientific notation
                var coefficientP = dividendP / divisorP
                
                // build the scientific notation
                var scientificNotation = String(coefficientP) + " x 10^" + String(exponentP)
                
                print("\(scientificNotation)")
                
            }
        } else {
            
            if let inputAsFloat = Float(input){
                
                
                //Getting the Number
                var numberN = input
                
                //Getting the string length
                var countN = numberN.characters.count
                print("Count of characters is \(countN)")
                
                //Loop over the characters in the string
                for c in numberN.characters{
                    print("\(c)")
                }
                
                //Getting the exponent
                var exponentN = countN - 3
                
                // Getting the divisor
                var divisorN = pow(Float(0.1), Float(exponentN))
                
                // Getting the dividend
                var dividendN = Float(numberN)!
                
                var coefficientN = dividendN / divisorN
                
                var scientificNotationN = String(coefficientN) + " x 10^-" + String(exponentN)
                
                print("\(scientificNotationN)")
                
            }else{
                
                print("\(errorMessage)")
                
            }
            
        }
        
        
        
    }
}while userInput == 0

