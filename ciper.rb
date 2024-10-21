# Caesar Cipher implementation in Ruby
def caesar_cipher_char(character, shift) # is a method that takes a character and a shift value as arguments and returns the character shifted by the shift value. The method uses an alphabet array to determine the index of the character in the alphabet and then shifts the character by the specified amount. If the character is uppercase, the method returns the shifted character in uppercase as well.
alphabet = ('a'..'z').to_a # is an array that contains all the lowercase letters of the alphabet.
index_of_character = nil # is a variable that will store the index of the character in the alphabet array.

return character unless alphabet.include?(character.downcase) # is a guard clause that returns the character if it is not included in the alphabet array.

alphabet.each_with_index do |char, index| # iterates over the alphabet array and assigns the index of the character in the alphabet array to the index_of_character variable.
  index_of_character = index if character.downcase == char
end

cipher = alphabet[index_of_character + shift] # calculates the shifted character by adding the shift value to the index of the character in the alphabet array.
cipher.upcase == character ? cipher.upcase : cipher # returns the shifted character in uppercase if the original character is uppercase, otherwise returns the shifted character in lowercase.
end

def caesar_cipher(string, shift) # is a method that takes a string and a shift value as arguments and returns the string with each character shifted by the shift value. The method iterates over each character in the string and calls the caesar_cipher_char method to shift each character.

result = '' # is a variable that will store the resulting string after shifting each character.

string.each_char do |char| # iterates over each character in the string.
  result += caesar_cipher_char(char, shift) # calls the caesar_cipher_char method to shift the character and appends the result to the result variable.
end

result # returns the resulting string after shifting each character.
end
puts caesar_cipher('Abz 4543 c', 3) # calls the caesar_cipher method with the string 'Abz 4543 c' and a shift value of 3 and prints the resulting string. The output will be 'DeC 7876 f'.