require_relative 'spec_helper'
require_relative '../queens'

describe Queens do |variable|

	context "defaults" do
		subject {Queens.new}
		it 'tests default position' do
			expect(subject.white).to eq [0, 3]
			expect(subject.black).to eq [7, 3]
		end

		it 'tests string representation' do
			queens = Queens.new(white: [2, 4], black: [6, 6])
			board = <<-BOARD.chomp
O O O O O O O O
O O O O O O O O
O O O O W O O O
O O O O O O O O
O O O O O O O O
O O O O O O O O
O O O O O O B O
O O O O O O O O
			BOARD
			expect(queens.to_s).to eq(board)
		end
	end

	it 'specific placement' do
		queens = Queens.new(white: [3, 7], black: [6, 1])
		expect(queens.white).to eq [3, 7]
		expect(queens.black).to eq [6, 1]
	end

	it 'same placement' do
		expect{Queens.new(white: [2, 4], black: [2, 4])}.to raise_error(ArgumentError)
	end

	context 'attack?' do
		it 'test if queens cannot attack' do
			queens = Queens.new(white: [2, 3], black: [4, 7])
			expect(queens.attack?).to eq(false)
		end

		it 'test can attack on same row' do
			queens = Queens.new(white: [2, 4], black: [2, 7])
			expect(queens.attack?).to eq(true)
		end

		it 'test can attack on same column' do
			queens = Queens.new(white: [5, 4], black: [2, 4])
			expect(queens.attack?).to eq(true)
		end

		it 'test can attack on diagonal' do
			queens = Queens.new(white: [1, 1], black: [6, 6])
			expect(queens.attack?).to eq(true)
		end

		it 'test can attack on other diagonal' do
			queens = Queens.new(white: [0, 6], black: [1, 7])
			expect(queens.attack?).to eq(true)
		end

		it 'test can attack on yet another diagonal' do
			queens = Queens.new(white: [4, 1], black: [6, 3])
			expect(queens.attack?).to eq(true)
		end
	end
end
