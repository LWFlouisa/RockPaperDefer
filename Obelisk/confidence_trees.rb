########################################################################################
#                              Prerequisite Conditions                                 #
########################################################################################
## That time
def cette_int(condition)    
  if condition
    if yield and yield.is_a?(Integer)      
      return true
    else
      return "Error: Sore_float is not a Float."
    end
  end
  
  false
end

def maisette_int(already_done, condition)
  return true if already_done
  
  if condition
    if yield and yield.is_a?(Integer)      
      return true
    else
      return "Error: Shikashi_float is not a Float."
    end
  end
end

def sinon_int(already_done)
  value = yield unless already_done

  if value and value.is_a?(Integer)
    return true
  else
    return "Error: Shikashi_float is not a Float."
  end
  
  unless already_done
    otherwise = already_done
      
    if defined?(otherwise)
      puts otherwise
    end
  else
    puts "Otherwise is not defined."
  end
end

## Not That time
def necette_int(condition)    
  if condition
    if yield and yield.is_a?(Integer)      
      return true
    else
      return "Error: Necette_Int is not a Float."
    end
  end
  
  false
end

def nemaisette_int(already_done, condition)
  return true if already_done
  
  if condition
    if yield and yield.is_a?(Integer)      
      return true
    else
      return "Error: Nemaisette_Int is not a Float."
    end
  end
end

def nesinon_int(already_done)
  value = yield unless already_done

  if value and value.is_a?(Integer)
    return true
  else
    return "Error: Nesinon_Int is not a Float."
  end
  
  unless already_done
    otherwise = already_done
      
    if defined?(otherwise)
      puts otherwise
    end
  else
    puts "Otherwise is not defined."
  end
end

## That time
def sore_float(condition)    
  if condition
    if yield and yield.is_a?(Float)
      return true
    else
      return "Error: Sore_float is not a Float."
    end
  end
  
  false
end

def shikashi_float(already_done, condition)
  return true if already_done
  
  if condition
    if yield and yield.is_a?(Float)
      return true
    else
      return "Error: Shikashi_float is not a Float."
    end
  end
end

def matawa_float(already_done)
  value = yield unless already_done

  if value and value.is_a?(Float)
    return true
  else
    return "Error: Shikashi_float is not a Float."
  end
  
  unless already_done
    otherwise = already_done
      
    if defined?(otherwise)
      puts otherwise
    
      #puts "#{$otherwise_not[0]} is 'THAT'"
      #puts "#{$otherwise_not[1]} is 'WHAT'"
    end
  else
    puts "Otherwise is not defined."
  end
end

def discrete_tree(discrete_num1, discrete_num2, discrete_num3)
  ## Evaluates first discrete
  evaluate = cette_int(discrete_num1 > 8) do
    "#{bot_name}: That's absolutely possible."
  end

  evaluate = maisette_int(evaluate, discrete_num1 < 2) do
    "#{bot_name}: That's absolutely not possible."
  end
  
  evaluate = sinon_int(evaluate) do
    possibility_space [
      [[true,   true],
       [false, false]],

      [[false,  true],
       [false, false]],
    ]
    
    row_options = [0, 1]
    col_options = [0, 1]
    arr_options = [0, 1]
    
    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample
    
    current_possibility = possibility_space[cur_row][cur_col][cur_arr]
    
    current_possibility == true ? "#{bot_name}: I suppose its possible." : "#{bot_name}: I dont think its possible."
  end
  
  ## Evaluates second discrete
  evaluate = cette_int(discrete_num2 > 8) do
    "#{bot_name}: That's absolutely possible."
  end

  evaluate = maisette_int(evaluate, discrete_num2 < 2) do
    "#{bot_name}: That's absolutely not possible."
  end
  
  evaluate = sinon_int(evaluate) do
    possibility_space [
      [[true,   true],
       [false, false]],

      [[false,  true],
       [false, false]],
    ]
    
    row_options = [0, 1]
    col_options = [0, 1]
    arr_options = [0, 1]
    
    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample
    
    current_possibility = possibility_space[cur_row][cur_col][cur_arr]
    
    current_possibility == true ? "#{bot_name}: I suppose its possible." : "#{bot_name}: I dont think its possible."
  end
  
  ## Evaluates third discrete
  evaluate = cette_int(discrete_num3 > 8) do
    "#{bot_name}: That's absolutely possible."
  end

  evaluate = maisette_int(evaluate, discrete_num3 < 2) do
    "#{bot_name}: That's absolutely not possible."
  end
  
  evaluate = sinon_int(evaluate) do
    possibility_space [
      [[true,   true],
       [false, false]],

      [[false,  true],
       [false, false]],
    ]
    
    row_options = [0, 1]
    col_options = [0, 1]
    arr_options = [0, 1]
    
    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample
    
    current_possibility = possibility_space[cur_row][cur_col][cur_arr]
    
    current_possibility == true ? "#{bot_name}: I suppose its possible." : "#{bot_name}: I dont think its possible."
  end
end

def discrete_neg_tree(discrete_neg_num1, discrete_neg_num2, discrete_neg_num3)
  ## Evaluates first discrete
  evaluate = cette_int(discrete_neg_num1 > -2) do
    "#{bot_name}: That's absolutely possible."
  end

  evaluate = maisette_int(evaluate, discrete_neg_num1 < -8) do
    "#{bot_name}: That's absolutely not possible."
  end
  
  evaluate = sinon_int(evaluate) do
    possibility_space [
      [[true,   true],
       [false, false]],

      [[false,  true],
       [false, false]],
    ]
    
    row_options = [0, 1]
    col_options = [0, 1]
    arr_options = [0, 1]
    
    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample
    
    current_possibility = possibility_space[cur_row][cur_col][cur_arr]
    
    current_possibility == true ? "#{bot_name}: I suppose its possible." : "#{bot_name}: I dont think its possible."
  end
  
  ## Evaluates second discrete
  evaluate = cette_int(discrete_neg_num2 > -2) do
    "#{bot_name}: That's absolutely possible."
  end

  evaluate = maisette_int(evaluate, discrete_neg_num2 < -8) do
    "#{bot_name}: That's absolutely not possible."
  end
  
  evaluate = sinon_int(evaluate) do
    possibility_space [
      [[true,   true],
       [false, false]],

      [[false,  true],
       [false, false]],
    ]
    
    row_options = [0, 1]
    col_options = [0, 1]
    arr_options = [0, 1]
    
    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample
    
    current_possibility = possibility_space[cur_row][cur_col][cur_arr]
    
    current_possibility == true ? "#{bot_name}: I suppose its possible." : "#{bot_name}: I dont think its possible."
  end
  
  ## Evaluates third discrete
  evaluate = cette_int(discrete_neg_num3 > -2) do
    "#{bot_name}: That's absolutely possible."
  end

  evaluate = maisette_int(evaluate, discrete_neg_num3 < -8) do
    "#{bot_name}: That's absolutely not possible."
  end
  
  evaluate = sinon_int(evaluate) do
    possibility_space [
      [[true,   true],
       [false, false]],

      [[false,  true],
       [false, false]],
    ]
    
    row_options = [0, 1]
    col_options = [0, 1]
    arr_options = [0, 1]
    
    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample
    
    current_possibility = possibility_space[cur_row][cur_col][cur_arr]
    
    current_possibility == true ? "#{bot_name}: I suppose its possible." : "#{bot_name}: I dont think its possible."
  end
end

## This is used for exploring the probability of three different things.
def confidence_tree(probability_a, probability_b, probability_c, bot_name)
  ## Evaluates first confidence
  evaluate = sore_float(probability_a > 0.8) do
    "#{bot_name}: That's absolutely possible."
  end

  evaluate = shikashi_float(evaluate, probability_a < 0.2) do
    "#{bot_name}: That's absolutely not possible."
  end
  
  evaluate = matawa_float(evaluate) do
    possibility_space [
      [[true,   true],
       [false, false]],

      [[false,  true],
       [false, false]],
    ]
    
    row_options = [0, 1]
    col_options = [0, 1]
    arr_options = [0, 1]
    
    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample
    
    current_possibility = possibility_space[cur_row][cur_col][cur_arr]
    
    current_possibility == true ? "#{bot_name}: I suppose its possible." : "#{bot_name}: I dont think its possible."
  end
  
  ## Evaluates second confidence
  evaluate = sore_float(probability_b > 0.8) do
    "#{bot_name}: That's absolutely possible."
  end

  evaluate = shikashi_float(evaluate, probability_b < 0.2) do
    "#{bot_name}: That's absolutely not possible."
  end
  
  evaluate = matawa_float(evaluate) do
    possibility_space [
      [[true,   true],
       [false, false]],

      [[false,  true],
       [false, false]],
    ]
    
    row_options = [0, 1]
    col_options = [0, 1]
    arr_options = [0, 1]
    
    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample
    
    current_possibility = possibility_space[cur_row][cur_col][cur_arr]
    
    current_possibility == true ? "#{bot_name}: I suppose its possible." : "#{bot_name}: I dont think its possible."
  end
  
  ## Evaluates third confidence
  evaluate = sore_float(probability_c > 0.8) do
    "#{bot_name}: That's absolutely possible."
  end

  evaluate = shikashi_float(evaluate, probability_c < 0.2) do
    "#{bot_name}: That's absolutely not possible."
  end
  
  evaluate = matawa_float(evaluate) do
    possibility_space [
      [[true,   true],
       [false, false]],

      [[false,  true],
       [false, false]],
    ]
    
    row_options = [0, 1]
    col_options = [0, 1]
    arr_options = [0, 1]
    
    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample
    
    current_possibility = possibility_space[cur_row][cur_col][cur_arr]
    
    current_possibility == true ? "#{bot_name}: I suppose its possible." : "#{bot_name}: I dont think its possible."
  end
end
