
func diamond(_ size: Int) -> String? {
    if size <= 0 || size.isMultiple(of: 2) {
        return nil
    }
    var diamondArray : [[String]] = []
  
    for i in 1...size {
        if !i.isMultiple(of: 2) {
            var arr = Array(repeating: "*", count: i)
            arr.append("\n")
            let toInsert = Array(repeating: " ", count: (size - i) / 2)
            arr.insert(contentsOf: toInsert, at: 0)
            
            diamondArray.append(arr)
            if i == size {
                for j in stride(from: i, through: 1, by: -1) {
                    if i != j && !j.isMultiple(of: 2) {
                        var arr = Array(repeating: "*", count: j)
                        arr.append("\n")
                        let toInsert = Array(repeating: " ", count: (size - j) / 2)
                        arr.insert(contentsOf: toInsert, at: 0)

                        diamondArray.append(arr)
                    }
                }
            }
        }
    }
    
    let flattened = diamondArray.flatMap { $0 }
    
    return flattened.joined()
}


print(diamond(9))