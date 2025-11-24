https://www.codewars.com/kata/5526fc09a1bbd946250002dc/train/swift

func findOutlier(_ array: [Int]) -> Int {
    var odd: [Int] = []
    var even: [Int] = []
    array.forEach { num in
        if num.isMultiple(of: 2) {
            odd.append(num)
        } else {
            even.append(num)
        }
    }
    return odd.count > even.count ? even.first! : odd.first!
}
