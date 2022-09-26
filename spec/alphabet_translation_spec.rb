require 'spec_helper'

RSpec.describe AlphabetTranslation do
  let(:letters) {AlphabetTranslation.new }

  it 'is a class' do
    expect(letters).to be_a AlphabetTranslation
    expect(letters.letters_and_braille).to be_a Hash
    expect(letters.letters_and_braille).to include String
  end

  it 'takes a valid letter and return braille' do
     expect(letters.alphabet_translation("e")).to eq("0..0..")
     expect(letters.alphabet_translation(" ")).to eq("......")
     expect(letters.alphabet_translation("  ")).not_to eq("......")
  end

  it 'takes valid braille and returns alphabet' do
    expect(letters.braille_translation(".0000.")).to eq("t")
    expect(letters.braille_translation("0.....")).not_to eq(" ")
  end


end