def caesar_cipher(string, key)
  alphabet = ("abcdefghijklmnopqrstuvwxyz").split("")
  new_string = []
  string = string.split("")
  string.each do |letter|
    majusc = false
    
    unless alphabet.include?(letter)
      majusc = true
    
    end
    if alphabet.include?(letter.downcase)
      index = alphabet.index(letter.downcase)
      if (index + key) >= alphabet.length 
        index_b = index
        counter = 0
        while index_b < alphabet.length
          counter += 1
          index_b += 1
        end 
        letter = alphabet[key - counter]
      else 
        letter = alphabet[index + key]  
      end  

      
      if majusc 
        new_string.push(letter.upcase)
      else
        new_string.push(letter)
      end
      p new_string

    else
      new_string.push(letter) 

    end
    

    
  end

  puts new_string.join.to_s
end 

caesar_cipher("Hello, World", -25)






