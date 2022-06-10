#lib/caesar_cipher.rb

class CaesarCipher
  def encrypt(string, shift)
    result = ""
    string.each_char do |char|
      base = char.ord < 91 ? 65 : 97
      if char.ord.between?(65,90) || char.ord.between?(97,122)
        result += ((char.ord - base + shift) % 26 + base).chr
      else
        result += char
      end
    end
    result
  end
end
