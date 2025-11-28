class RomanNumerals {
    let pairs: [(roman: String, value: Int)] = [
        ("M", 1000), ("CM", 900), ("D", 500), ("CD", 400),
        ("C", 100), ("XC", 90), ("L", 50), ("XL", 40),
        ("X", 10), ("IX", 9), ("V", 5), ("IV", 4), ("I", 1)
    ]
    
    
   static func toRoman(_ number: Int) -> String {
    var ansroman = ""
    var num = number
    for (roman, value) in RomanNumerals().pairs {
            while num >= value {
                print(value)
                ansroman += roman
                num -= value
        }
    }
    return ansroman
  }
  
    static func toInt(_ roman: String) -> Int {
            let chars = Array(roman)
            var total = 0
            var i = 0
            
            while i < chars.count {
                // Check for 2-character match first (like "CM", "IV")
                if i + 1 < chars.count,
                   let twoCharValue = RomanNumerals().pairs.first(where: { $0.roman == String(chars[i]) + String(chars[i+1]) })?.value {
                    total += twoCharValue
                    i += 2
                } else if let oneCharValue = RomanNumerals().pairs.first(where: { $0.roman == String(chars[i]) })?.value {
                    total += oneCharValue
                    i += 1
                } else {
                    // Invalid character
                    i += 1
                }
            }
            
            return total
        }

}

