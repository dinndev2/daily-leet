func digitalRoot(of number: Int) -> Int {
    if number < 10 { return number }
    let sum = String(number).compactMap { $0.wholeNumberValue }.reduce(0, +)
    return digitalRoot(of: sum)
}
