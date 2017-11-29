# frozen_string_literal: false

describe 'A Ruby String' do
  describe 'is mutable' do
    it 'is mutable' do
      string1 = "part1"
      string2 = "part1"
      expect(string1.object_id).not_to eql(string2.object_id)

      object_id = string1.object_id
      string1 << "addString"
      expect(string1.object_id).to eql(object_id)
    end
  end

  describe 'concatenation' do
    it 'concatenates' do
      expect("test " + "success").to eql("test success")
    end
  end

  describe 'interpolation' do
    it 'interpolates' do
      success = "success"
      expect("test #{success}").to eql("test success")
    end
  end
end
