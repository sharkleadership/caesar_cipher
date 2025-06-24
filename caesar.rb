#!/usr/bin/env ruby
LETTERS = %w[abcdefghijklmnopqrstuvwxyz][0].split('')
def caesar_cipher(string, shift_length)
  shift_length %= 26
  string.split('').map do |char|
    next char if LETTERS.none?(char.downcase)

    LETTERS.each_with_index do |let, idx|
      next unless let == char.downcase

      idx = (idx + shift_length) - 26
      break (char == char.upcase ? LETTERS[idx].upcase : LETTERS[idx])
    end
  end.join('')
end

print 'Please input a string to be run through the Caesar cipher: '
string = gets.chomp.to_s
print 'Please input the number the string should be Caesar ciphered by: '
shift = gets.chomp.to_i
puts caesar_cipher(string, shift)
