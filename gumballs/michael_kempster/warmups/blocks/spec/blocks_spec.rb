require_relative 'spec_helper'
require_relative '../blocks'

describe Blocks do

	it 'should be able to make A' do
		#skip
    blocks = Blocks.new
    expect(blocks.can_make_word('A')).to eq true
  end
 
  it 'should be able to make BARK' do
    #skip
    blocks = Blocks.new
    expect(blocks.can_make_word('BARK')).to eq true
  end

  it 'should be able to make BOOK' do
    #skip
    blocks = Blocks.new
    expect(blocks.can_make_word('BOOK')).to eq false
  end

  it 'should be able to make TREAT' do
    #skip
    blocks = Blocks.new
    expect(blocks.can_make_word('TREAT')).to eq true
  end

  it 'should be able to make COMMON' do
    #skip
    blocks = Blocks.new
    expect(blocks.can_make_word('COMMON')).to eq false
  end

  it 'should be able to make SQUAD' do
    #skip
    blocks = Blocks.new
    expect(blocks.can_make_word('SQUAD')).to eq true
  end

  it 'should be able to make CONFUSE' do
    #skip
    blocks = Blocks.new
    expect(blocks.can_make_word('CONFUSE')).to eq true
  end

end
