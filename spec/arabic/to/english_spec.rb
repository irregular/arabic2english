require "arabic/to/english"

describe Arabic::To::English do

	describe "base number" do

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

end
