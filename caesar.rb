#!/usr/bin/env ruby
LETTERS = %w[abcdefghijklmnopqrstuvwxyz][0].split("")
def caesar_cipher(string, shift_length)
  new_string = ""
  shift_length = shift_length % 26
  string.each_char do |char|
    if LETTERS.none?(char.downcase)
      new_string << char
      next
    end
    LETTERS.each_with_index do |let,idx|
      if let == char.downcase
        idx = (idx + shift_length) - 26
        new_string << (char == char.upcase ? LETTERS[idx].upcase : LETTERS[idx])
        break
      end
    end
  end
  new_string
end

print "Please input a string to be run through the Caesar cipher: "
string = gets.chomp.to_s
print "Please input the number the string should be Caesar ciphered by: "
shift = gets.chomp.to_i
puts caesar_cipher(string, shift)
