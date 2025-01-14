require "pry"

# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n) where n is the number of strings in the array.
# Space Complexity: O(n) where n is the number of strings in the array.

def grouped_anagrams(strings)
  sorted_words = {}
  anagrams = []

  strings.each do |word|
    word_sorted = word.chars.sort.join
    if !sorted_words.keys.include?(word_sorted)
      # In the hashmap, the sorted word will point to the index in the outer array that the anagram should be placed.
      index = sorted_words.length
      sorted_words[word_sorted] = index
      anagrams[index] = [word]
    else
      # Add anagram to correct group.
      anagrams[sorted_words[word_sorted]].push(word)
    end
  end

  return anagrams
end

# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: ?
# Space Complexity: ?
def top_k_frequent_elements(list, k)
  raise NotImplementedError, "Method hasn't been implemented yet!"
end

# This method will return the true if the table is still
#   a valid sudoku table.
#   Each element can either be a ".", or a digit 1-9
#   The same digit cannot appear twice or more in the same
#   row, column or 3x3 subgrid
# Time Complexity: ?
# Space Complexity: ?
def valid_sudoku(table)
  raise NotImplementedError, "Method hasn't been implemented yet!"
end
