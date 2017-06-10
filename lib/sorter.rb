class Sorter
  def self.sort(input, representation: 2, marker: '1', use_original_number: true)
    if use_original_number
      input.sort_by { |num| [num.to_s(representation).count(marker), num] }
    else
      input.sort_by { |num| num.to_s(representation).count(marker) }
    end
  end
end
