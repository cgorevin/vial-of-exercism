# frozen_string_literal: true

# a class to solve the 3x+1 problem given an integer
class CollatzConjecture
  def self.steps(integer)
    raise ArgumentError if integer <= 0

    steps = 0
    until integer == 1
      integer = integer.even? ? integer / 2 : (3 * integer) + 1
      steps += 1
    end

    steps
  end
end
