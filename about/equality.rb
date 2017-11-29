# frozen_string_literal: true

describe 'Ruby Comparision Operators' do
  context '== and equal? work the other way around compared to java!' do
    it 'equal? checks for object identity' do
      class AObj
      end
      class BObj
      end
      expect(AObj == BObj).to eq(false)
      expect(AObj.equal?BObj).to eq(false)
      expect(AObj.equal?AObj).to eq(true)
    end
    it '== checks for equal value' do
      expect(1 == 1).to eq(true)
    end
  end
end
