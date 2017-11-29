# frozen_string_literal: true

describe 'map on enumerations' do
  let(:an_map) { [ "a", "b", "c", "d" ] }

  it '- adding elements' do
    an_map.collect { |x| x + "!" }        #=> ["a!", "b!", "c!", "d!"]
  end

  it 'show element' do
    expect(an_map[1]).to eq('b!')
  end

end
