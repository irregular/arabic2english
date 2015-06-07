module Arabic
  module To
    module English

		def convert number

			raise ArgumentError.new( "Integer number expected" ) unless number.is_a?( Fixnum )

			if number <= 10

				convert_decimal_base( number )


			else

				convert_irregular( number )

			end

		end

		module_function :convert

		class << self

			def convert_decimal_base number

				case number

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

				end

			end

		end

    end
  end
end
