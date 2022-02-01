# frozen_string_literal: true

module ArmstrongNumbers
  def self.include?(number)
    number.digits.sum { |n| n**number.digits.length } == number
  end
end
