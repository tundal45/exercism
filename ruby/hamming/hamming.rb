module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError if strand_a.length != strand_b.length

    count = 0

    strand_a.each_char.with_index(0) do |char, index|
      count += 1 unless char == strand_b[index]
    end

    count
  end
end
