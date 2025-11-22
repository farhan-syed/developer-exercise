class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str.split(" ").map do |word|
      # Separate alphabetic part and trailing punctuation.
      m = word.match(/\A([A-Za-z]+)([^A-Za-z]*)\z/)
      if m
        core  = m[1]
        punct = m[2] || ""
      else
        core  = word
        punct = ""
      end

      if core.length > 4
        replacement = core[0] == core[0].upcase ? "Marklar" : "marklar"
        replacement + punct
      else
        word
      end
    end.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    return 0 if nth <= 0

    a, b = 1, 1   # first two Fibonacci numbers
    sum = 0

    1.upto(nth) do
      sum += a if a.even?
      a, b = b, a + b
    end

    sum
  end

end
