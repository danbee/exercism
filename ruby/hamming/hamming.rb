class Hamming
  def self.compute(strand_a, strand_b)
    return 0 if strand_a == strand_b

    a = Strand.new(strand_a)
    b = Strand.new(strand_b)
    distance = 0

    a.nucleotides.each_with_index do |nucleotide, i|
      if !b.nucleotides[i].nil? && nucleotide != b.nucleotides[i]
        distance += 1
      end
    end

    distance
  end
end

class Strand
  attr_reader :strand

  def initialize(strand)
    @strand = strand
  end

  def nucleotides
    @strand.chars
  end
end
