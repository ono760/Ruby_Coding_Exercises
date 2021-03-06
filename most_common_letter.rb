# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.

def most_common_letter(string)
  most_common_letter = nil
  most_common_letter_count = nil
  idx1 = 0
  while idx1 < string.length
    letter = string[idx1]
    count = 0
    idx2 = 0
    while idx2 < string.length
      count += 1 if string[idx2] == letter
      idx2 += 1
    end
    if most_common_letter_count.nil? || (count > most_common_letter_count)
      most_common_letter = letter
      most_common_letter_count = count
    end
    idx1 += 1
  end

  [most_common_letter, most_common_letter_count]
end
