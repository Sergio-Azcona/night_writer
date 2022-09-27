require 'spec_helper'

RSpec.describe AlphabetTranslation do
  let(:letters) {AlphabetTranslation.new }

  it 'is a class' do
    expect(letters).to be_a AlphabetTranslation
    expect(letters.letters_and_braille).to be_a Hash
    expect(letters.letters_and_braille).to include String
  end
end