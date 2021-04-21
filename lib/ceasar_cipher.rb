def cipher_one_letter(letter, key)
    
    univ_key = key.remainder(26)

    if letter =~ /[A-Z]/
        (letter.ord + univ_key) > 90 ? (letter.ord + univ_key - 26).chr : 
        (letter.ord + univ_key) < 65 ? (letter.ord + univ_key + 26).chr : (letter.ord + univ_key).chr
    elsif letter =~/[a-z]/
        (letter.ord + univ_key) > 122 ? (letter.ord + univ_key - 26).chr : 
        (letter.ord + univ_key) < 97 ? (letter.ord + univ_key + 26).chr : (letter.ord + univ_key).chr
    elsif letter.class != String
        "Please give me a string!"
    else
        letter
    end
end

def ceasar_cipher(string, key)
    string.split("").map { |character| cipher_one_letter(character, key) }.join("")
end