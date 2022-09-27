require 'spec_helper'

RSpec.describe BrailleTranslator do
  let(:braille_input) { BrailleTranslator.new }

  it 'takes valid braille and returns alphabet' do
    expect(braille_input.braille_translation(".0000.")).to eq("t")
    expect(braille_input.braille_translation("0.....")).not_to eq(" ")
  end

end