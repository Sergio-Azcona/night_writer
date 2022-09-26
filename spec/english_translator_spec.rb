require 'spec_helper'

RSpec.describe EnglishTranslator do
  let(:english_message) { EnglishTranslator.new }

  it 'is a class' do
    expect(english_message).to be_a NightWriter
  end

  it 'receives a message from message.txt' do
    # expect(english_message.read_input_text).to eq(["h","e"])
    expect(english_message.read_input_text).to eq(["h", "o", "p", "e", " ", "i", " ", "p", "a", "s", "s"])#HOPE I pass
  end

  it 'should count the number of characters in a message' do
    # expect(english_message.length_of_message).to eq(2)#he
    expect(english_message.length_of_message).to eq(11)#HOPE I pass
  end

  it 'takes a valid letter and return braille' do
    # expect(english_message.braille_conversion).to eq(["0.00..","0..0.."])#he
    expect(english_message.braille_conversion).to eq(["0.00..", "0..00.", "000.0.", "0..0..", "......", ".00...", "......", "000.0.", "0.....", ".00.0.", ".00.0."])#HOPE I pass
  end

  it 'confirms the message contains characters and inform if characters are not valid' do
    expect(english_message.valid_input?).to eq true
    #out if invalid not working!!
  end
  
 
end