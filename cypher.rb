def caesar_cipher(string, num)
  if num > 25
    puts 'The number cant be bigger than 25'
    return
  end

  string_codes = string.bytes
  string_encrypted = string_codes.map do |letter|
    fekanum = letter + num

    if letter.between?('a'.ord, 'z'.ord)
      if fekanum > 'z'.ord
        fekanum - 26
      else
        fekanum
      end
    elsif letter.between?('A'.ord, 'Z'.ord)
      if fekanum > 'Z'.ord
        fekanum - 26
      else
        fekanum
      end
    else
      letter
    end
  end

  string_encrypted = string_encrypted.pack('c*')
  puts string_encrypted

  string_encrypted
end

caesar_cipher('What a string!', 17)
