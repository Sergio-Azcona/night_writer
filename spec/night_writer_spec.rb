require 'spec_helper'

RSpec.describe NightWriter do
  let(:english_message) { NightWriter.new }

  it 'is a class' do
    expect(english_message).to be_a NightWriter
  end

  it 'receives a message from message.txt' do
    expect(english_message.read_input_text).to eq("he")
  end

  it 'should count the number of characters in a message' do
    expect(english_message.length_of_message).to eq(2)
  end
  
 
end