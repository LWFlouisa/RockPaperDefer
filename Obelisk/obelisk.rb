def obelisk(old_data)
  old_graveyard = File.readlines("graveyard/urn.txt").shuffle

  File.open("graveyard/urn.txt", "w") { |f|
    f.puts old_data
    f.puts old_graveyard
  }
end

def scatter_ashes
  old_graveyard = File.readlines("graveyard/urn.txt").uniq.sort.shuffle
  size_limit    = old_graveyard.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_graveyard[index]
  
    index = index + 1
  end
end

def yonagumi(current_year)
  age_of_yonagumi = 11000.0
  
  age_percent = current_year / age_of_yonagumi
  
  "For a point of comparison: Yonagumi is #{age_of_yonagumi} years old as of #{current_year}."
end

def age_comparison(current_year, age_historical, specific_event)
  age_percent = age_historical / current_year
  
  puts "The current year is #{current_year}, #{specific_event} is #{age_percent} in age. #{yonagumi(2026.0)}"
end

def example_comparisons
  age_comparison(2026.0, 1793.0, "Charlotte's Beheading")
end
