# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# --- My Solution---
hsh.each do |k,v|
  v.each do |word|
    word.split('').each do |letter|
      if letter == 'a'
        p letter
      elsif letter == 'e'
        p letter
      elsif letter == 'i'
        p letter
        elsif letter == 'o'
          p letter
          elsif letter == 'u'
            p letter
          end
        end
  end
end
# ---Provided Solution---
vowels = 'aeiou'

hsh.each_value do |arr|
  arr.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end