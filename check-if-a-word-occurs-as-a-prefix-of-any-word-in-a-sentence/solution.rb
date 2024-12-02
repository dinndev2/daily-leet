def is_prefix_of_word(sentence, search_word)
  idx = 0
  sentence.split(" ").each do |word|
      idx += 1
      if word.downcase.start_with?(search_word.downcase)
          return idx
      end
  end
  return -1  # Return -1 if no match found
end