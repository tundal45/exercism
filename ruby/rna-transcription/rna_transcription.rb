module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(dna)
    invalid_nucleotides = dna.match /[^CGTA]/
    invalid_nucleotides.nil? ? dna.tr('GCTA', 'CGAU') : ''
  end
end
