def two_sum(nums, target)
  hash_map = {}
  # check if current num + other num include? in nums[]
  nums.each_with_index do |num, i|
      compliment = target - num
      if hash_map.key?(compliment)
          return [hash_map[compliment], i]
      end
      hash_map[num] = i
  end
  []
end