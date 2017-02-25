require 'prime'

module BookKeeping
  VERSION = 3
end

class Raindrops
  MAPPING = {
    '3' => 'Pling',
    '5' => 'Plang',
    '7' => 'Plong'
  }

  def self.convert(number)
    divisors = Prime.instance.prime_division(number)
      .select { |tuple| [3, 5, 7].include?(tuple.first) }
      .map { |tuple| tuple.first }

    return number.to_s if divisors.empty?

    divisors.inject("") do |retval, divisor|
      retval += MAPPING[divisor.to_s]
    end
  end
end
