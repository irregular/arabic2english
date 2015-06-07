require "arabic/to/english"

describe Arabic::To::English do

	describe "input validation" do

		it "rejects non-number inputs" do

			expect { subject.convert( 'x' ) }.to raise_exception( ArgumentError )

			expect { subject.convert( 1.2 ) }.to raise_exception( ArgumentError )

		end

		it "converts input to absolute" do

			expect( subject.convert( -10 ) ).to eq( "ten" )

		end

	end

	describe "decimal base" do

		it {

			expect( subject.convert( 1 ) ).to eq( "one" )

			expect( subject.convert( 2 ) ).to eq( "two" )

			expect( subject.convert( 3 ) ).to eq( "three" )

			expect( subject.convert( 4 ) ).to eq( "four" )

			expect( subject.convert( 5 ) ).to eq( "five" )

			expect( subject.convert( 6 ) ).to eq( "six" )

			expect( subject.convert( 7 ) ).to eq( "seven" )

			expect( subject.convert( 8 ) ).to eq( "eight" )

			expect( subject.convert( 9 ) ).to eq( "nine" )

			expect( subject.convert( 10 ) ).to eq( "ten" )

		}

	end

	describe "irregular numbers" do

		it "11" do

			expect( subject.convert( 11 ) ).to eq( "eleven" )

		end

		it "12" do

			expect( subject.convert( 12 ) ).to eq( "twelve" )

		end

		it "13" do

			expect( subject.convert( 13 ) ).to eq( "thirteen" )

		end

		it "15" do

			expect( subject.convert( 15 ) ).to eq( "fifteen" )

		end

		it "20" do

			expect( subject.convert( 20 ) ).to eq( "twelve" )

		end

		it "30" do

			expect( subject.convert( 30 ) ).to eq( "thirty" )

		end

		it "40" do

			expect( subject.convert( 40 ) ).to eq( "forty" )

		end

		it "50" do

			expect( subject.convert( 50 ) ).to eq( "fifty" )

		end

		it "80" do

			expect( subject.convert( 80 ) ).to eq( "eighty" )

		end

	end

	describe "*teens" do

		it "14" do

			expect( subject.convert( 14 ) ).to eq("fourteen")

		end

		it "16" do

			expect( subject.convert( 16 ) ).to eq("sixteen")

		end

		it "17" do

			expect( subject.convert( 17 ) ).to eq("seventeen")

		end

		it "18" do

			expect( subject.convert( 18 ) ).to eq("eightteen")

		end

		it "19" do

			expect( subject.convert( 19 ) ).to eq("nineteen")

		end

	end

	describe "*ty" do

		it "60" do

			expect( subject.convert( 60 ) ).to eq( "sixty" )

		end

		it "70" do

			expect( subject.convert( 70 ) ).to eq( "seventy" )

		end

	end

	describe "*ty and *" do

		it "61" do

			expect( subject.convert( 61 ) ).to eq( "sixty one" )

		end

		it "81" do

			expect( subject.convert( 81 ) ).to eq( "eighty one" )

		end

		it "41" do

			expect( subject.convert( 41 ) ).to eq( "forty one" )

		end

	end

	describe "*hundred *" do

		it "100" do

			expect( subject.convert( 100 ) ).to eq( "one hundred" )

			expect( subject.convert( 101 ) ).to eq( "one hundred and one" )

			expect( subject.convert( 211 ) ).to eq( "two hundred and eleven" )

			expect( subject.convert( 481 ) ).to eq( "four hundred and eighty one" )

			expect( subject.convert( 881 ) ).to eq( "eight hundred and eighty one" )

		end

	end

	describe "*thousand *" do

		it "1000" do

			expect( subject.convert( 1000 ) ).to eq( "one thousand" )

		end

		it "1001" do

			expect( subject.convert( 1001 ) ).to eq( "one thousand and one" )

		end

		it "2080" do

			expect( subject.convert( 2080 ) ).to eq( "two thousand and eighty" )

		end

		it "8188" do

			expect( subject.convert( 8188 ) ).to eq( "eight thousand and one hundred and eighty eight" )

		end

		it "281_200" do

			expect( subject.convert( 281_200 ) ).to eq( "two hundred and eighty one thousand and two hundred" )

		end

	end

	describe "*millions" do

		it "1_281_200" do

			expect( subject.convert( 1_281_200 ) ).to eq( "one million and two hundred and eighty one thousand and two hundred" )

		end

		it "88_281_200" do

			expect( subject.convert( 88_281_200 ) ).to eq( "eighty eight million and two hundred and eighty one thousand and two hundred" )

		end

	end
end
