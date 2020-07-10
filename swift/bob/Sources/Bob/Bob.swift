import Foundation

func hey(_ input: String) -> String {
    if input.trimmingCharacters(in: .whitespaces).isEmpty {
        return "Fine. Be that way!"
    } else if input == input.uppercased() && input.rangeOfCharacter(from: CharacterSet.letters) != nil {
        return "Whoa, chill out!"
    } else if input.hasSuffix("?") {
       return "Sure."
   }
    
    return "Whatever."
}
