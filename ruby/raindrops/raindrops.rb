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
    retval = ''

    divisors.each do |divisor|
      next unless [3, 5, 7].include?(divisor.first)

      retval += MAPPING.fetch(divisor.first.to_s)
    end

    return number.to_s if retval.empty?

    retval
  end
end
