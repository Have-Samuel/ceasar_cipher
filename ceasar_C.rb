# Ceasar cipher Challenge
# This Challenge is to create a method that takes a string and a number as arguments and then shifts each letter in the string by the number.
def cipher(str, shift)
  # Looping arrays
  ord_array = []
  ciphier_ord_array = []
  ciphier_array = []

  # Convert string to downcase and then, string to array of characters.
  # And include spaces and punctuation using chars method
  str_array = str.downcase.chars # Returns downcase string which is converted into an array by the chars method. eg "What a string!" = ["w", "h", "a", "t", " ", "a", " ", "s", "t", "r", "i", "n", "g", "!"] 

  # Create array of srting ordinal values
  for i in str_array
    ord_array.push(i.ord) # This returns the corresponding ASCII value of the alphabet character, eg. "a" = 97 and "z" = 122 and "!" = 33 and " " = 32 
  end
  # The ord method gives each character in the string a number value and stores it in an array
  # [119, 104, 97, 116, 32, 97, 32, 115, 116, 114, 105, 110, 103, 33]
  # 119 = w, 104 = h, 97 = a, 116 = t, 32 = space, 97 = a, 32 = space, 115 = s, 116 = t, 114 = r, 105 = i, 110 = n, 103 = g, 33 = !

  # first push i not equal to a-z to final product, no mutation
  # second Wrap from a to z in case i - shift is normal below 'a'
  # Lastly, if wrap not needed, push i - shift
  # For ASCII Values Lowercase we have :97 - 122, which are the values for a-z
  # eg 97 = a, 98 = b, 99 = c, 100 = d, 101 = e, 102 = f, 103 = g, 104 = h, 105 = i, 106 = j, 107 = k, 108 = l, 109 = m, 110 = n, 111 = o, 112 = p, 113 = q, 114 = r, 115 = s, 116 = t, 117 = u, 118 = v, 119 = w, 120 = x, 121 = y, 122 = z
  # For ASCII Values Uppercase we have :65 - 90, which are the values for A-Z
  # eg 65 = A, 66 = B, 67 = C, 68 = D, 69 = E, 70 = F, 71 = G, 72 = H, 73 = I, 74 = J, 75 = K, 76 = L, 77 = M, 78 = N, 79 = O, 80 = P, 81 = Q, 82 = R, 83 = S, 84 = T, 85 = U, 86 = V, 87 = W, 88 = X, 89 = Y, 90 = Z
  # For ASCII Values Punctuation we have :33 - 64, which are the values for !-@
  # eg 33 = !, 34 = ", 35 = #, 36 = $, 37 = %, 38 = &, 39 = ', 40 = (, 41 = ), 42 = *, 43 = +, 44 = ,, 45 = -, 46 = ., 47 = /, 48 = 0, 49 = 1, 50 = 2, 51 = 3, 52 = 4, 53 = 5, 54 = 6, 55 = 7, 56 = 8, 57 = 9, 58 = :, 59 = ;, 60 = <, 61 = =, 62 = >, 63 = ?, 64 = @
  # For ASCII Values Space we have :32, which is the value for space
  # eg 32 = space 

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