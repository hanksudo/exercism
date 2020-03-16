class Acronym
  def self.abbreviate(words)
    words
      .scan(/[a-zA-Z']+/)
      .collect { |word| word[0].upcase }
      .join('')
  end
end
