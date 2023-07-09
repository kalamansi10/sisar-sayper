require './lib/cryptography'  #=> add this

describe Cypher do
    describe "#caesar_cipher" do
        it "shifts a string by 2" do
            cryptography = Cypher.new
            expect(cryptography.caesar_cipher('a', 2)).to eql('c')
        end
    end
    describe "#caesar_cipher" do
        it "wraps z to a" do
            cryptography = Cypher.new
            expect(cryptography.caesar_cipher('z', 2)).to eql('b')
        end
    end
    describe "#caesar_cipher" do
        it "keeps letter case" do
            cryptography = Cypher.new
            expect(cryptography.caesar_cipher('A', 2)).to eql('C')
        end
    end
    describe "#caesar_cipher" do
        it "ignores special characters" do
            cryptography = Cypher.new
            expect(cryptography.caesar_cipher('.', 2)).to eql('.')
        end
    end
    describe "#caesar_cipher" do
        it "can encode a word" do
            cryptography = Cypher.new
            expect(cryptography.caesar_cipher('word', 2)).to eql('yqtf')
        end
    end
    describe "#caesar_cipher" do
        it "can encode a sentence" do
            cryptography = Cypher.new
            expect(cryptography.caesar_cipher('Hello world.', 2)).to eql('Jgnnq yqtnf.')
        end
    end
end
