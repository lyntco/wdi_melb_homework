require_relative 'spec_helper'
require_relative '../letter_blocks'

describe Letters do |variable|

	context "word test" do
		subject {Letters.new}

		it 'can make word "A"' do 
			expect(subject.can_make_word("A")).to eq(true)
		end
		it 'can make word "BARK"' do 
			expect(subject.can_make_word("BARK")).to eq(true)
		end
		it 'can make word "BOOK"' do 
			expect(subject.can_make_word("BOOK")).to eq(false)
		end
		it 'can make word "TREAT"' do 
			expect(subject.can_make_word("TREAT")).to eq(true)
		end
		it 'can make word "COMMON"' do 
			expect(subject.can_make_word("COMMON")).to eq(false)
		end
		it 'can make word "SQUAD"' do 
			expect(subject.can_make_word("SQUAD")).to eq(true)
		end
		it 'can make word "CONFUSE"' do 
			expect(subject.can_make_word("CONFUSE")).to eq(true)
		end
	end
end
