def three_plot_burial(father, mother, child)
  buried_fathers  = File.readlines("graveyard/family/father.txt").uniq.sort
  buried_mothers  = File.readlines("graveyard/family/mother.txt").uniq.sort
  buried_children = File.readlines("graveyard/family/child.txt").uniq.sort

  File.open("graveyard/family/father.txt", "w") { |f|
    f.puts father
    f.puts buried_fathers
  }
  
  File.open("graveyard/family/mother.txt", "w") { |f|
    f.puts mother
    f.puts buried_mothers
  }
  
  File.open("graveyard/family/child.txt", "w") { |f|
    f.puts child
    f.puts buried_children
  }
end

def four_plot_burial(father, mother, brother, sister)
  buried_fathers  = File.readlines("graveyard/family/father.txt").uniq.sort
  buried_mothers  = File.readlines("graveyard/family/mother.txt").uniq.sort
  buried_brothers = File.readlines("graveyard/family/brother.txt").uniq.sort
  buried_sister   = File.readlines("graveyard/family/sister.txt").uniq.sort

  File.open("graveyard/family/father.txt", "w") { |f|
    f.puts father
    f.puts buried_fathers
  }
  
  File.open("graveyard/family/mother.txt", "w") { |f|
    f.puts mother
    f.puts buried_mothers
  }
  
  File.open("graveyard/family/brother.txt", "w") { |f|
    f.puts brother
    f.puts buried_brothers
  }

  File.open("graveyard/family/sister.txt", "w") { |f|
    f.puts sister
    f.puts buried_sisters
  }
end

def scatter_three_ashes
  old_fathers  = File.readlines("graveyard/family/father.txt").uniq.sort.shuffle
  old_mothers  = File.readlines("graveyard/family/mother.txt").uniq.sort.shuffle
  old_children = File.readlines("graveyard/family/child.txt").uniq.sort.shuffle

  size_limit    = old_fathers.size.to_i
  index         = 0
  
  ## Scatters fathers ashes in the wind.
  size_limit.times do
    puts old_fathers[index]
  
    index = index + 1
  end
  
  ## Scatters mothers ashes in the wind
  size_limit    = old_mothers.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_mothers[index]
  
    index = index + 1
  end

  ## Scatters childrens ashes in the wind.
  size_limit    = old_children.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_children[index]
  
    index = index + 1
  end
end

def scatter_four_ashes
  old_fathers  = File.readlines("graveyard/family/father.txt").uniq.sort.shuffle
  old_mothers  = File.readlines("graveyard/family/mother.txt").uniq.sort.shuffle
  old_brothers = File.readlines("graveyard/family/brother.txt").uniq.sort.shuffle
  old_sisters  = File.readlines("graveyard/family/sister.txt").uniq.sort.shuffle

  size_limit    = old_fathers.size.to_i
  index         = 0
  
  ## Scatters fathers ashes in the wind.
  size_limit.times do
    puts old_fathers[index]
  
    index = index + 1
  end
  
  ## Scatters mothers ashes in the wind
  size_limit    = old_mothers.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_mothers[index]
  
    index = index + 1
  end

  ## Scatters brothers ashes in the wind.
  size_limit    = old_brothers.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_brothers[index]
  
    index = index + 1
  end

  ## Scatters brothers ashes in the wind.
  size_limit    = old_sisters.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_sisters[index]
  
    index = index + 1
  end
end
