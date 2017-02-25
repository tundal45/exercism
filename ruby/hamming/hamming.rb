module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError if strand_a.length != strand_b.length

    sa = strand_a.each_char

    strand_b.each_char.count do |char|
      char != sa.next
    end
  end
end
