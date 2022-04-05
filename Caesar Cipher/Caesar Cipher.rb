str = gets
num = gets.to_i

def caesar_cipher(str, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  alphabet_upcase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

  
  new_chars = str.split("").map do |char|
    if alphabet.include?(char)
      old_index = alphabet.index(char)
      new_index = (old_index + num) % alphabet.length
      alphabet[new_index]
      
    elsif alphabet_upcase.include?(char)
      old_index = alphabet_upcase.index(char)
      new_index = (old_index + num) % alphabet_upcase.length
      alphabet_upcase[new_index]
    else
      char      
    end
  end  
  return new_chars.join("")
end

puts caesar_cipher(str, num)
puts caesar_cipher("What a string!", 5)