module Arabic
  module To
    module English

		POWS = {
			1_000_000_000 => "billion",
			1_000_000 => "million",
			1000 => "thousand",
			100 => "hundred"
		}

		def convert number

			raise ArgumentError.new( "Integer number expected" ) unless number.is_a?( Fixnum )

			number = number.abs

			if number <= 10

				convert_decimal_base( number )

			elsif (irregular_number = convert_irregular( number ))

				irregular_number

			elsif number < 20

				convert_teen( number )

			elsif number < 100

				if ( mdu = number % 10 ) == 0

					convert( number / 10 ) + "ty"

				else

					convert( number - mdu ) + " " + convert(mdu)

				end

			else

				result = []

				residue = number

				POWS.each do |div, name|

					nom = residue / div

					if nom > 0

						if result.length > 0

							result << "and"

						end

						result << convert( nom )

						result << name

					end

					residue = residue % div

				end

				if residue > 0

					result << "and"

					result << convert( residue )

				else

					result

				end

				result.join(" ")

			end

		end

		module_function :convert

		class << self

			def convert_decimal_base number

				case number

				when 0

					"zero"


				when 1

					"one"

				when 2

					"two"

				when 3

					"three"

				when 4

					"four"

				when 5

					"five"

				when 6

					"six"

				when 7

					"seven"

				when 8

					"eight"

				when 9

					"nine"

				when 10

					"ten"

				end

			end

			def convert_irregular number

				case number

				when 11

					"eleven"

				when 12

					"twelve"

				when 13

					"thirteen"

				when 15

					"fifteen"

				when 20

					"twelve"

				when 30

					"thirty"

				when 40

					"forty"

				when 50

					"fifty"

				when 80

					"eighty"

				end

			end

			def convert_teen( number )

				convert( number % 10 ) + "teen"

			end

		end

    end
  end
end
