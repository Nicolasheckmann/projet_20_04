require_relative '../lib/ceasar_cipher'

describe 'the cipher_one_letter method' do
    it 'ciphers a letter into another *key* rank later in the alphabet given the *key*' do
        expect(cipher_one_letter('a',5)).to eq('f')
        expect(cipher_one_letter('m',0)).to eq('m')
        expect(cipher_one_letter('x',4)).to eq('b')
        expect(cipher_one_letter('d',-1)).to eq('c')
        expect(cipher_one_letter('d',-6)).to eq('x')
    end

    it 'Capitalized letters stay capitalized through ciphering' do
        expect(cipher_one_letter('A',5)).to eq('F')
        expect(cipher_one_letter('M',0)).to eq('M')
        expect(cipher_one_letter('X',4)).to eq('B')
        expect(cipher_one_letter('D',-1)).to eq('C')
        expect(cipher_one_letter('D',-6)).to eq('X')
    end

    it 'leaves the ponctuation unchanged' do
        expect(cipher_one_letter('!',0)).to eq('!')
        expect(cipher_one_letter('!',4)).to eq('!')
        expect(cipher_one_letter('.',-1)).to eq('.')
        expect(cipher_one_letter(',',-6)).to eq(',')
    end

    it 'only takes strings as input' do
        expect(cipher_one_letter(5,5)).to eq("Please give me a string!")
    end

end

describe 'the ceasar_cipher method' do
    it 'ciphers a string into another where each letter is mapped using the key argument. it keeps capitalization and punctuation' do
        expect(ceasar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    end

    it 'only takes strings as input' do
        expect(cipher_one_letter(5,5)).to eq("Please give me a string!")
    end
    
end