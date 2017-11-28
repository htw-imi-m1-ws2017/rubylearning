# frozen_string_literal: true

describe 'A Ruby Class' do
  it 'reflects on instance class' do
    class X
    end
    expect(X.new.class).to eq X
  end
  it 'has convenient way to define getter and setters for fields'
  it 'has one constructor called initialize'
end
