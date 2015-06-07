require "arabic/to/english"

describe Arabic::To::English do

	it "rejects invalid inputs" do

		expect { subject.convert( 'x' ) }.to raise_exception( ArgumentError )

		expect { subject.convert( 1.2 ) }.to raise_exception( ArgumentError )

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

	end

end
