def caesar_cipher (untouched_string, the_step)
    up_alphabet = ("A".."Z").to_a
    down_alphabet = ("a".."z").to_a
    encoded_string_aray = []
    untouched_string.chars.each do |character|
        if character !~ /[A-Za-z]/
            encoded_string_aray << character
        elsif character == character.upcase
            new_char_index = up_alphabet.find_index(character) + the_step
            if new_char_index > 25
                new_char_index = new_char_index - 26
                encoded_string_aray << up_alphabet[new_char_index]
            else
                encoded_string_aray << up_alphabet[new_char_index]
            end
        elsif character == character.downcase
            new_char_index = down_alphabet.find_index(character) + the_step
            if new_char_index > 25
                new_char_index = new_char_index - 26
                encoded_string_aray << down_alphabet[new_char_index]
            else
                encoded_string_aray << down_alphabet[new_char_index] 
            end
        end
    end
    p encoded_string_aray.join
end

caesar_cipher("The quickzz.", 1)