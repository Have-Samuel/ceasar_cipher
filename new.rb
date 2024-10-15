def caesar_cipher_char(character, shift)
  alphabet = ('a'..'z').to_a
  index_of_character = nil

  return character unless alphabet.include?(character.downcase)

  alphabet.each_with_index do |char, index|
    index_of_character = index if character.downcase == char
  end

  cipher = alphabet[index_of_character + shift]
  cipher.upcase == character ? cipher.upcase : cipher
end

def caesar_cipher(string, shift)
  result = ''

     string.each_char do |char|
    result += caesar_cipher_char(char, shift)
  end

  result
end

puts caesar_cipher('Abz 4543 c', 3)
    
    # new
# def caesar_cipher_char(character, shift)
#   alphabet = ('a'..'z').to_a
#   index_of_character = nil

#   return character unless alphabet.include?(character.downcase)

#   alphabet.each_with_index do |char, index|
#     index_of_character = index if character.downcase == char
#   end

#   cipher = alphabet[index_of_character + shift]
#   cipher.upcase == character ? cipher.upcase : cipher
# end

# # def caesar_cipher(string, shift)
# #   result = ''

# #   string.each_char do |char|
# #     result += caesar_cipher_char(char, sh
# # def caesar_cipher(string, shift)
# #   result = ''

#   string.each_char do |char|
#     result += caesar_cipher_char(char, shift)
#   end

#   result
# end

# puts caesar_cipher('Abz 4543 c', 3)