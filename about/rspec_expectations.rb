# frozen_string_literal: true

describe 'About RSpec Build-in Matchers' do
  # this is a selection of some of the rspec expectations you can use; see also
  # https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers

  it 'value equality' do
    expect(5.0).to eq 5
    expect(3.2).not_to eq 3
  end

  it 'object identity' do
    p = o = Object.new
    expect(o).to equal(p)
    # or
    expect(o).to be(p)

    q = Object.new
    expect(q).not_to be(p)
  end

  it 'what happens if you just use expect' do
    # this looks reasonable
    a = 1
    expect(a == 1)
    # but this works, too
    expect(1 == 2)
    # in fact, all that does is returning an
    expect(expect(1 == 3).class).to eq RSpec::Expectations::ExpectationTarget
  end
end

describe 'Predicate Matchers' do
  it 'are used with be and the predicate name without ?' do
    empty_array = []
    expect(empty_array).to be_empty
    # which is the same as
    expect(empty_array.empty?).to eq(true)
  end

  it 'work for arbitrary predicates' do
    # SpecialSauce only knows that it's special
    class SpecialSauce
      def special?
        true
      end
    end
    expect(SpecialSauce.new).to be_special
  end

  it 'work for predicates with parameters' do
    expect([1, 2, 3]).to include(3)
  end
end
describe 'Expecting Exceptions' do
  it 'can check for Exceptions' do
    class MyError < RuntimeError
    end
    expect { raise MyError }.to raise_error(MyError)
  end
end
