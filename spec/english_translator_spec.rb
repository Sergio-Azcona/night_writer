require 'spec_helper'

RSpec.describe EnglishTranslator do
  let(:english_message) { EnglishTranslator.new }

  xit 'is a class' do
    expect(english_message).to be_a EnglishTranslator
  end

  xit 'receives a message from night writer' do
    # allow(english_message).to receive(:read_input_text).and_return(note)
    note = "HOPE I Pass" 
    expect(english_message.read_input_text(note)).to eq(["h", "o", "p", "e", " ", "i", " ", "p", "a", "s", "s"])
    # expect(english_message.alter_message).to eq(["h", "o", "p", "e", " ", "i", " ", "p", "a", "s", "s"])#HOPE I pass
  end

  xit 'confirms the message contains characters and inform if characters are not valid' do
    english_message.read_input_text("HOPE I Pass")
    expect(english_message.valid_input?).to eq true
    #out if invalid not working!!
  end
  
  xit 'should count the number of characters in a message' do
    # expect(english_message.length_of_message).to eq(2)#he
    expect(english_message.length_of_message).to eq(11)#HOPE I pass
  end

  xit 'takes a valid letter and return braille' do
    # expect(english_message.braille_conversion).to eq(["0.00..","0..0.."])#he
    expect(english_message.braille_conversion).to eq(["0.00..", "0..00.", "000.0.", "0..0..", "......", ".00...", "......", "000.0.", "0.....", ".00.0.", ".00.0."])#HOPE I pass
  end

  it 'splits the braille message into individual characters in their own array' do
    
    expect(english_message.split_braille_message).to eq([["0", ".", "0", "0", ".", "."], ["0", ".", ".", "0", "0", "."], ["0", "0", "0", ".", "0", "."], ["0",".",".", ".","."], ["0", ".", ".", ".", ".", "."], [".", "0", "0", ".", "0", "."], [".", "0", "0", ".", "0", "."]])#HOPE I pass
  end
  

  
 
end