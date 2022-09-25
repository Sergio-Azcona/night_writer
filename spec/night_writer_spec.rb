require 'spec_helper'

RSpec.describe NightWriter do
  let(:incoming_message) { NightWriter.new }

  it 'is a class' do
    expect(incoming_message).to be_a NightWriter
  end



end