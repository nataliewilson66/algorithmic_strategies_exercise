# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

# def compress_str(str)
#   cmp_str = ""
#   str.each_char.with_index do |char, idx|
#     count = 1
#     (idx + 1...str.length).each do |i|
#         if char == str[i]
#             count += 1
#         end
#     end
#     if count >= 2
#         cmp_str += count.to_s + char
#     else 
#         cmp_str += char
#     end
#   end
#   return cmp_str
# end

def compress_str(str)
  cmp_str = ""
  idx = 0
  while idx < str.length
    count = 1
    i = idx + 1
    while i < str.length && str[idx] == str[i]
        count += 1
        i += 1
    end
    if count >= 2
        cmp_str += count.to_s + str[idx]
    else
        cmp_str += str[idx]
    end
    idx += count 
  end
  return cmp_str
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
