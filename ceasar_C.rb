# # str = "What a string!"
# # str.to_i

# # (position_index + shift) % 26, will be formula we will use to shift the letters

# def ceasar_cipher(str, shift)
#   # empty array to store the shifted letters
#   shifted_letters = []
#   # split the string into an array of characters
#   str.split("").each do |letter|
#     # we will use ASCII values to shift the letters
#     # check if the letter is a capital letter
#     # What does the .ord method do? It returns the ASCII value of the character it is called on.
#     if letter.ord >= 65 && letter.ord <= 90
#       shifted_letter = (letter.ord + shift - 65) % 26 + 65
#       shifted_letters.push(shifted_letter.chr)
#     # check if the letter is a lower case letter
#     elsif letter.ord >= 97 && letter.ord <= 122
#       shifted_letter = (letter.ord + shift - 97) % 26 + 97
#       shifted_letters.push(shifted_letter.chr)
#     # if the letter is not a letter, push it to the array
#     else
#       shifted_letters.push(letter)
#     end
#   end
# end

def cipher(str, shift)
  # Looping arrays
  ord_array = []
  ciphier_ord_array = []
  ciphier_array = []

  # Convert string to downcase and then, string to array of characters.
  # And include spaces and punctuationi using chars method
  str_array = str.downcase.chars
  # ["w", "h", "a", "t", " ", "a", " ", "s", "t", "r", "i", "n", "g", "!"]

  # Create array of srting ordinal values
  for i in str_array
    ord_array.push(i.ord)
  end
  # The ord method gives each character in the string a number value and stores it in an array
  # [119, 104, 97, 116, 32, 97, 32, 115, 116, 114, 105, 110, 103, 33]
  # 119 = w, 104 = h, 97 = a, 116 = t, 32 = space, 97 = a, 32 = space, 115 = s, 116 = t, 114 = r, 105 = i, 110 = n, 103 = g, 33 = !

  # first push i not equal to a-z to final product, no mutation
  # second Wrap from a to z in case i - shift is normal below 'a'
  # Lastly, if wrap not needed, push i - shift
  for i in ord_array
    if i < 97 || i > 122
      ciphier_ord_array.push(i)
    elsif i + shift > 122
      x = i + shift
      y = x - 122
      ciphier_ord_array.push(96 + y)
    else
      ciphier_ord_array.push(i + shift)
    end
  end

  # Convert ordinal values to characters
  for i in ciphier_ord_array
    ciphier_array.push(i.chr)
  end

  # Convert array to string
  puts "Your string is #{str}"
  puts "Which gets converted into an array: #{str_array}"
  puts "Which is turned into ordinal values: #{ord_array}"
  puts "and then shifted based on your number #{ciphier_array}"
  puts "and finally turned back into a new cipher string: #{ciphier_array}"
  puts "the final encrypted message is #{ciphier_array.join('')}"
end

cipher("What a string!", 5)