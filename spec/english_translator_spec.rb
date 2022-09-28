require 'spec_helper'

RSpec.describe EnglishTranslator do
  let(:english_message) { EnglishTranslator.new }

  it 'is a class' do
    expect(english_message).to be_a EnglishTranslator
  end

  it 'receives a message from night writer' do
    note = "HOPE I Pass" 
    allow_any_instance_of(File).to receive(:read).and_return(note)
    expect(english_message.read_input_text).to eq(["h", "o", "p", "e", " ", "i", " ", "p", "a", "s", "s"])
  end

  it 'confirms the message contains characters and inform if characters are not valid' do
    note = "HOPE I Pass" 
    allow(english_message).to receive(:read_input_text).and_return(note)
    expect(english_message.valid_input?).to eq true
  end
  
  it 'takes a valid letter and return braille' do
    note = "HOPE I Pass" 
    allow(english_message).to receive(:read_input_text).and_return(note)
    expect(english_message.braille_conversion).not_to eq(["0.00..", "0..00.", "000.0."])
    expect(english_message.braille_conversion).to eq(["0.00..", "0..00.", "000.0.", "0..0..", "......", ".00...", "......", "000.0.", "0.....", ".00.0.", ".00.0."])
  end

  it 'converts braille message into individual two characters, adds a new line, in their own array' do
    note = "HOPE I Pass" 
    allow(english_message).to receive(:read_input_text).and_return(note)
    split_note = [
    [["0."], ["00"], [".."]],
    [["0."], [".0"], ["0."]],
    [["00"], ["0."], ["0."]],
    [["0."], [".0"], [".."]],
    [[".."], [".."], [".."]],
    [[".0"], ["0."], [".."]],
    [[".."], [".."], [".."]],
    [["00"], ["0."], ["0."]],
    [["0."], [".."], [".."]],
    [[".0"], ["0."], ["0."]],
    [[".0"], ["0."], ["0."]]
    ]
    expect(english_message.split_braille_message).to eq(split_note)
  end
  
  it '#transpose_braille_message to get letters accross left to right' do
  note = "HOPE I Pass" 
    allow(english_message).to receive(:read_input_text).and_return(note)
    virtical_message = [
    ["0.", "0.", "00", "0.", "..", ".0", "..", "00", "0.", ".0", ".0"],
    ["00", ".0", "0.", ".0", "..", "0.", "..", "0.", "..", "0.", "0."],
    ["..", "0.", "0.", "..", "..", "..", "..", "0.", "..", "0.", "0."]
    ]
    expect(english_message.virtical_braille_characters).to eq(virtical_message)
  end

  it 'takes a valid letter and return braille' do
    expect(english_message.alphabet_translation("e")).to eq("0..0..")
    expect(english_message.alphabet_translation(" ")).to eq("......")
    expect(english_message.alphabet_translation("  ")).not_to eq("......")
 end
end