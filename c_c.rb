def caesar_cipher(word, shift)
  capitals=('A'..'Z').to_a
  small_lets=('a'..'z').to_a
  res = ''     
  caps_length= capitals.length
  small_lets_length = small_lets.length
  word.each_char do |val|
    if capitals.include?(val)
      val_index = capitals.find_index(val)
      cipher_val = val_index + shift
      if cipher_val >= caps_length # cipher_val should be less or equal to the length of the array
        cipher_val -= caps_length
      end
      shifter = capitals[cipher_val]
        #  p shifter
      res += shifter
    elsif small_lets.include?(val)
      val_index =  small_lets.find_index(val)
        #  p val_index
      cipher_val = val_index + shift
        #  p cipher_val
      if cipher_val >= small_lets_length # cipher_val should be less or equal to the length of the array
        cipher_val -= small_lets_length
      end
      shifter = small_lets[cipher_val]
        #  p shifter
      res += shifter
    else
     res += val
    end
  end
  res
end

  p caesar_cipher('zzZZ', 1) # => "aaAA"
  p caesar_cipher('What a string!', 5) # => "Bmfy f xywnsl!"
  p caesar_cipher('Kabareebe Samuel', 4) # => "Oefeviifi Weqyip"
  p caesar_cipher('Kabareebe Samuel', 26) # => "Kabareebe Samuel"
  p caesar_cipher('Kabareebe Samuel', 0) # => "Kabareebe Samuel"
  p caesar_cipher('Kabareebe Samuel', 27) # => "Lbcbsffcf Tvnzbn"
  p caesar_cipher('Kabareebe Samuel', 28) # => "Mcdctggdg Uwoaco"