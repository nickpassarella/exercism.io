class Hamming
  def self.compute(strand_1, strand_2)
    raise ArgumentError,
      'strands must be equal length' unless strand_1.length == strand_2.length
    strand_1.chars.zip(strand_2.chars).reject { |a, b| a == b }.length
  end
end

module BookKeeping
  VERSION = 3
end
