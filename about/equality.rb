# frozen_string_literal: true

describe 'Ruby Comparision Operators' do


  context '== and equal? work the other way around compared to java!' do
    it 'equal? checks for object identity' do
    end
    it '== checks for equal value' do 
    end

    let(:array_1) { [1, 2] }
  	let(:array_2) { [1, 2] }
	it 'arrays with same elements' do
  		expect(array_1 == array_2).to eq(true)
  	end
  	it 'arrays with same elements' do
  		expect(array_1.equal?(array_2)).to eq(false)
  	end

  	let(:string_1) {'hello world'}
  	let(:string_2) {'hello world'}
  	it 'string test (equal?) with same string objects' do
  		expect(string_1.equal?(string_2)).to eq(true)
  	end
  	it 'string test (==) with same string objects' do
  		expect(string_1 == string_2).to eq(true)
  	end

  	let(:string_3) {'hello world?'}
  	let(:string_4) {'hello world!'}

  	it 'string test (equal?) with different string objects' do
  		expect(string_3.equal?(string_4)).to eq(false)
  	end

  	it 'string test (==) with different string objects' do
  		expect(string_3 == string_4).to eq(false)
  	end

  end

end
