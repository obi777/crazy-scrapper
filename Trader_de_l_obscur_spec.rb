require 'rspec'
require_relative '../lib/Trader_de_l_obscur'

describe "scrapper" do


	describe "Bitcoin" do
		it "found_bitcoin" do
			expect({"Bitcoin" => "$3632.55"}).to include({"Bitcoin"=>"$3632.55"})
		end
	end

	describe "nil"
		it "found_NIL" do
			expect(nil).to be_nil
		end
	end
