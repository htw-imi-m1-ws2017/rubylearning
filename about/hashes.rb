# frozen_string_literal: true

describe 'Hashes' do
  describe 'syntax' do
    it 'old and new' do
      old_syntax = { :a => :b, :c => :d } # rubocop:disable
      new_syntax = { a: :b, c: :d }
      expect(old_syntax).to eq new_syntax
    end
  end
  describe 'usage' do
    let(:h) { { a: :b, c: :d, e: :f } }
    it 'key access' do
      expect(h[:c]).to eq :d
    end
  end
end
