module BookKeeping
  VERSION = 4
end

class Complement
  COMPLEMENT_NUCLEOTIDES = {
    G: 'C',
    C: 'G',
    T: 'A',
    A: 'U'
  }

  def self.of_dna(dna)
    dna.each_char.map do |nucleotide|
      nc = nucleotide.to_sym

      return ''  unless COMPLEMENT_NUCLEOTIDES.keys.include?(nc)

      COMPLEMENT_NUCLEOTIDES[nc]
    end.join
  end
end
