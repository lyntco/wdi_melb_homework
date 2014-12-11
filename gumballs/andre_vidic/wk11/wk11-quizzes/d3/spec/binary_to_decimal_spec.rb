require_relative 'spec_helper'
require_relative '../binary_to_decimal'

describe Converter do

	context "binary_to_decimal tests" do

		subject {Converter.new}
			it 'binary of 11 = decimal of 3' do
				expect(subject.convert("11")).to eq(3)
			end

			it 'binary of 110 = decimal of 6' do
				expect(subject.convert("110")).to eq(6)
			end
			
			it 'binary of 11000 = decimal of 24' do
				expect(subject.convert("11000")).to eq(24)
			end

			it 'binary of 100000 = decimal of 32' do
				expect(subject.convert("100000")).to eq(32)
			end

			it 'binary of 100100 = decimal of 36' do
				expect(subject.convert("100100")).to eq(36)
			end
	end
end
