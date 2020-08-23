
    ALPHABET = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J',
        'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U',
        'V', 'W', 'X', 'Y', 'Z']
        


def encrypt(to_encrypt, number)
    result = ''

    for c in to_encrypt.chars
        if c != ' '

            index_pos = ALPHABET.index(c.capitalize)
            if((index_pos + number.to_i) < 26)

                c = ALPHABET[index_pos + number.to_i]
            end
            if((index_pos + number.to_i) > 26)
                c = ALPHABET[((index_pos + number.to_i) - 26).abs]
            end
        
        end
        result = result + c
    end
    return result

end

def decrypt(message, number)
    result = ''
    for c in message.chars
        if c != ' '
            index_pos = ALPHABET.index(c.capitalize)
            if((index_pos - number.to_i) < 0)
                c = ALPHABET[((index_pos - number.to_i) + 26)]

            end

            if((index_pos - number.to_i) >= 0)
                c = ALPHABET[index_pos - number.to_i]

            end
        end

        result = result + c

    end
    return result
end

puts 'Please choose from the following: (E)ncrypt, (D)ecrypt;'
choice = gets.chomp


if (choice == 'e' || choice == 'E')
    puts 'Please Enter The Message You Would Like To Encrypt:'
    message = gets.chomp
    puts 'Please Choose The Number To Encrypt By: '
    num = gets.chomp
    result = encrypt(message, num)
    puts result
end

if (choice == 'd' || choice == 'D')
    puts 'Please Enter The Message You Would Like To Decrypt:'
    message = gets.chomp
    puts 'Please Choose The Number To Decrypt By: '
    num = gets.chomp
    result = decrypt(message, num)
    puts result
end