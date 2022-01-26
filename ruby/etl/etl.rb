# frozen_string_literal: true

# Transforms provided legacy data into new format for scrabble points
class ETL
  def self.transform(old_data)
    old_data.each_with_object({}) do |(key, values), transformed_data|
      values.each { |v| transformed_data[v.downcase] = key }
    end
  end
end
