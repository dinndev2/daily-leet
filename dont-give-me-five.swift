// https://www.codewars.com/kata/5813d19765d81c592200001a/train/swift
func dontGiveMeFive(_ start: Int, _ end: Int) -> Int {
  var answer = 0
  for i in start...end {
    var str = String(i)
    if (!str.contains("5")) {
      answer += 1
    }
  }
  return answer
}