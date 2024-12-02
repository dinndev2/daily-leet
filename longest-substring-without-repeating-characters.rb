def length_of_longest_substring(s)
  max_length = 0
  current_substring = ''
  
  s.each_char do |char|
    if current_substring.include?(char)
      # When we find a duplicate, start a new substring from the character after the first occurrence
      duplicate_index = current_substring.index(char)
      current_substring = current_substring[(duplicate_index + 1)..-1] + char
    else
      current_substring += char
    end
    
    # Update max_length after each character is processed
    max_length = [max_length, current_substring.length].max
  end
  
  max_length
end