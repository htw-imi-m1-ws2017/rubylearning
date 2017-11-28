# frozen_string_literal: true

describe 'Arrays' do
  let(:an_array) { [1, 2, 3, 4] }
  let(:an_array_with_strings) { %w[Name Nachname Vorname] }

  it 'indices start at 0' do
    expect(an_array[0]).to eq(1)
  end

  it '- adding elements' do
    an_array.unshift(7)
    expect(an_array[0]).to eq(7)
    expect(an_array).to eq([7, 1, 2, 3, 4])
    expect(an_array.size).to eq(5)
  end

  describe 'literals with string' do
    let(:an_array_with_strings) { %w[Name Nachname Vorname] }
    it 'should be created with %w' do
      expect(an_array_with_strings[1]).to eq('Nachname')
    end
  end
end
