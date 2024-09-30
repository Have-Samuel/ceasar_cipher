function rot13(encodedString) {
  let codeArr = encodedString.split(''); # split the string into an array
  let decodedArr = []; # create an empty array to store the decoded values
  # Create an aphalbet array that goes past Z by 13 characters starting from A
  let alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M'];
  # Loop through the codeArr
  for (let i = 0; i < codeArr.length; i++) {
  # If current value is not a letter, push it to the decodedArr
  if (alphabet.indecxOf(codeArr[i]) === -1) {
    # If the current value is not a letter, push it to the decodedArr
    # This is to account for spaces and punctuation
    # eg. "What a string!" = ["W", "h", "a", "t", " ", "a", " ", "s", "t", "r", "i", "n", "g", "!"]
    decodedArr.push(codeArr[i]);
  } else {
    for (let j = 0; j < alphabet.length; j++) {
      # If current value in array is equal to the current value in the alphabet array
      if (codeArr[i] === alphabet[j]) {
        decodedArr.push(alphabet[j + 13]); # push the value of the alphabet array that is 13 characters ahead of the current value
        }
      }
  }
  }
  return decodedArr.join(''); # return the decoded array as a string
}
