require './lib/caesar_cipher'

describe CaesarCipher do
  subject { CaesarCipher.new }
  describe "#encrypt" do
    it "returns 'D' when string is 'A' and shift is 3" do
      string = "A"
      shift = 3
      expect(subject.encrypt(string, shift)).to eql("D")
    end

    it "returns 'A' when string is 'D' and shift is -3" do
      string = "D"
      shift = -3
      expect(subject.encrypt(string, shift)).to eql("A")
    end
      
    it "returns same string when shift is 26" do
      string = "hello"
      shift = 26
      expect(subject.encrypt(string, shift)).to eql("hello")
    end

    it "returns same string when shift is 0" do
      string = "world"
      shift = 26
      expect(subject.encrypt(string, shift)).to eql("world")
    end

    it "returns punctuations unchanged" do
      string = "\!@\#\$"
      shift = 2
      expect(subject.encrypt(string, shift)).to eql("\!@\#\$")
    end

    it "returns same case" do
      string = "a"
      shift = 12
      expect(subject.encrypt(string, shift)).to eql("m")
    end

    it "returns string wrapped from z to a when shift positive" do
      string = "z"
      shift = 1
      expect(subject.encrypt(string, shift)).to eql("a")
    end
    
    it "returns string wrapped from a to z when shift negative" do
      string = "a"
      shift = -1
      expect(subject.encrypt(string, shift)).to eql("z")
    end
  end
end
