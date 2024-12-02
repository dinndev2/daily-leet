# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  return s if num_rows == 1 || s.length <= num_rows
  # init empty shells array
  arr = Array.new(num_rows) {""}
  current_row = 0
  step = 1 # 1 moving down -1 moving up 
  s.each_char do |char|
      arr[current_row] += char
      step = 1 if current_row == 0
      step = -1 if current_row == num_rows - 1
      current_row += step
  end
  arr.join
end  