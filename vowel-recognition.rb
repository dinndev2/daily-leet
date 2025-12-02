# FIRST SOLUTION - NO OPTIMIZATION 
# def vowel_recognition(input)
#   # your code here
#   vowels = ["a", "e", "i", "o","u"]
#   vowelCounts = 0
#   inputArr = input.chars
#   inputArr.each_with_index do |item, index|
#     subs = inputArr[index..inputArr.count - 1]
#     subs.each_with_index do |subItem, subIndex|
#       if vowels.include?(subItem.downcase)
#         vowelCounts += ((subs.count + 1) - (subIndex + 1))
#       end
#     end
#   end
#   return vowelCounts
# end

# WITH OPTIMIZATION LINEAR O(n)

def vowel_recognition(input)
  vowels = /[aeiou]/i
  n = input.length
  total = 0

  input.downcase.each_char.with_index do |ch, i|
    if ch =~ vowels
      total += (i + 1) * (n - i)
    end
  end

  total
end
