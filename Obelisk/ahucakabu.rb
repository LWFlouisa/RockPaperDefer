########################################################################################
#                              Alcaline De Kasui Bunkai                                #
########################################################################################
# Alcakabu - Literally alkaline hydrolises; refers to the method of breaking down      #
# data into basic components / compounds, before using it as seeds for new             #
# algorithms.                                                                          #
########################################################################################
def prime_rooms(first_prime, second_prime)
  multiplicative = first_prime * second_prime

  "If room is number #{multiplicative} this can warp to rooms #{first_prime} and #{second_prime}."
end

def ahucakabu(b1, b2, b3, b4,
              c1, c2, c3, c4,
              d1, d2, d3, d4,
              f1, f2, f3, f4,
              g1, g2, g3, g4,
              h1, h2, h3, h4,
              a1, a2, a3, a4,
              e1, e2, e3, e4,
              i1, i2, i3, i4,
              o1, o2, o3, o4,
              u1, u2, u3, u4)

  symbols = [ b1, c1, d1, f1,
              g1, h1, a1, e1,
              i1, o1, u1 ].sort #.uniq
              
  arg1 = [ b2, c2, d2, f2,
           g2, h2, a2, e2,
           i2, o2, u2 ].sort #.uniq
           
  arg2 = [ b3, c3, d3, f3,
           g3, h3, a3, e3,
           i3, o3, u3 ].sort #.uniq

  arg3 = [ b4, c4, d4, f4,
           g4, h4, a4, e4,
           i4, o4, u4 ].sort #.uniq
           
  symbol_size = symbols.size.to_i
  arg1_size   = arg1.size.to_i
  arg2_size   = arg2.size.to_i
  arg3_size   = arg3.size.to_i
  
  ## If everything passes checks, then procede for analyses.
  b = [  symbols[0],  arg1[0],  arg2[0],  arg3[0] ]
  c = [  symbols[1],  arg1[1],  arg2[1],  arg3[1] ]
  d = [  symbols[2],  arg1[2],  arg2[2],  arg3[2] ]
  f = [  symbols[3],  arg1[3],  arg2[3],  arg3[3] ]
  g = [  symbols[4],  arg1[4],  arg2[4],  arg3[4] ]
  h = [  symbols[5],  arg1[5],  arg2[5],  arg3[5] ]
  a = [  symbols[6],  arg1[6],  arg2[6],  arg3[6] ]
  e = [  symbols[7],  arg1[7],  arg2[7],  arg3[7] ]
  i = [  symbols[8],  arg1[8],  arg2[8],  arg3[8] ]
  o = [  symbols[9],  arg1[9],  arg2[9],  arg3[9] ]
  u = [ symbols[10], arg1[10], arg1[10], arg3[10] ]

  symbols = [
    [b[0], a[0]], [b[0], u[0]], [c[0], o[0]],
    [d[0], i[0]], [f[0], e[0]], [b[0], e[0]],     
    [b[0], o[0]], [c[0], a[0]], [c[0], i[0]],
  ], [
    [c[0], u[0]], [d[0], e[0]], [d[0], o[0]],
    [f[0], a[0]], [f[0], i[0]], [f[0], u[0]],
    [b[0], i[0]], [c[0], e[0]], [d[0], a[0]],
  ], [
    [d[0], u[0]], [f[0], o[0]], [g[0], a[0]],
    [g[0], u[0]], [g[0], e[0]], [g[0], o[0]],
    [g[0], i[0]], [h[0], a[0]], [h[0], e[0]],
  ]

  argument_one = [
    [b[1], a[1]], [b[1], u[1]], [c[1], o[1]],
    [d[1], i[1]], [f[1], e[1]], [b[1], e[1]],
    [b[1], o[1]], [c[1], a[1]], [c[1], i[1]],
  ], [
    [c[1], u[1]], [d[1], e[1]], [d[1], o[1]],
    [f[1], a[1]], [f[1], i[1]], [f[1], u[1]],
    [b[1], i[1]], [c[1], e[1]], [d[1], a[1]],
  ], [
    [d[1], u[1]], [f[1], o[1]], [g[1], a[1]],
    [g[1], u[1]], [g[1], e[1]], [g[1], o[1]],
    [g[1], i[1]], [h[1], a[1]], [h[1], e[1]],
  ]

  argument_two = [
    [b[2], a[2]], [b[2], u[2]], [c[2], o[2]],
    [d[2], i[2]], [f[2], e[2]], [b[2], e[2]],
    [b[2], o[2]], [c[2], a[2]], [c[2], i[2]],
  ], [
    [c[2], u[2]], [d[2], e[2]], [d[2], o[2]],
    [f[2], a[2]], [f[2], i[2]], [f[2], u[2]],
    [b[2], i[2]], [c[2], e[2]], [d[2], a[2]],
  ], [
    [d[2], u[2]], [f[2], o[2]], [g[2], a[2]],
    [g[2], u[2]], [g[2], e[2]], [g[2], o[2]],
    [g[2], i[2]], [h[2], a[2]], [h[2], e[2]],
  ]

  argument_tre = [
    [b[3], a[3]], [b[3], u[3]], [c[3], o[3]],
    [d[3], i[3]], [f[3], e[3]], [b[3], e[3]],
    [b[3], o[3]], [c[3], a[3]], [c[3], i[3]],
  ], [
    [c[3], u[3]], [d[3], e[3]], [d[3], o[3]],
    [f[3], a[3]], [f[3], i[3]], [f[3], u[3]],
    [b[3], i[3]], [c[3], e[3]], [d[3], a[3]],
  ], [
    [d[3], u[3]], [f[3], o[3]], [g[3], a[3]],
    [g[3], u[3]], [g[3], e[3]], [g[3], o[3]],
    [g[3], i[3]], [h[3], a[3]], [h[3], e[3]],
  ]

  probability = [
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
  ], [
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
  ], [
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
    [0.50, 0.50], [0.50, 0.50], [0.50, 0.50],
  ]

  base_probability = 0.33 * 0.33
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  ## Current Symbol
  current_symbol = symbols[cur_row][cur_col][cur_arr]
  
  ## Current Argument One
  current_arg1 = argument_one[cur_row][cur_col][cur_arr]

  ## Current Argument Two
  current_arg2 = argument_two[cur_row][cur_col][cur_arr]
  
  ## Current Argument Tre
  current_arg3 = argument_tre[cur_row][cur_col][cur_arr]
  
  ## Current Probabbility
  probability_selection = probability[cur_row][cur_col][cur_arr]
  current_probability   = base_probability * 0.5
  
  current_information = ":#{current_symbol}, '#{current_arg1}', '#{current_arg2}', '#{current_arg3}'"
  
  puts current_information
  
  $current_symbol      = current_symbol
  $current_arg1        = current_arg1
  $current_arg2        = current_arg2
  $current_arg3        = current_arg3
  $current_probability = current_probability
  $current_information = current_information
end

def self.gain
  if $current_probability > 0.999999999999999999
    $current_probability = 0.9 / $current_probability
  end
  
  case $current_probability
  when 0.003921569000000000..0.287225000000000000
    puts "I'm confident it is not [ #{$current_information} ] because it has #{$current_probability}."
  when 0.287225000000000001..0.522225000000000000
    puts "I'm less unconfident it is not [ #{$current_information} ] because it has #{$current_probability}."
  when 0.522225000000000001..0.756112500000000000
    puts "I'm almost sure it is [ #{$current_information} ] because it has #{$current_probability}."
  when 0.756112500000000001..0.999999999999999999
    puts "I'm sure it is [ #{$current_information} ] because it has #{$current_probability}."

  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  $current_probability = $current_probability + $current_probability
end

def self.loss
  if $current_probability > 0.999999999999999999
    $current_probability = 0.9 / $current_probability
  end
  
  case $current_probability
  when 0.003921569000000000..0.287225000000000000
    puts "I'm confident it is not [ #{$current_information} ] because it has #{$current_probability}."
  when 0.287225000000000001..0.522225000000000000
    puts "I'm less unconfident it is not [ #{$current_information} ] because it has #{$current_probability}."
  when 0.522225000000000001..0.756112500000000000
    puts "I'm almost sure it is [ #{$current_information} ] because it has #{$current_probability}."
  when 0.756112500000000001..0.999999999999999999
    puts "I'm sure it is [ #{$current_information} ] because it has #{$current_probability}."

  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  $current_probability = $current_probability * $current_probability
end

def self.sl_reward_allocation
  l1_reasses = "level one reasses"
  l2_reasses = "level two reasses"
  l3_reasses = "level tre reasses"
  l4_reasses = "level fro reasses"

  reward_model = [
    [[l1_reasses, l1_reasses, l1_reasses, l1_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l2_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l3_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l4_reasses]],
   
    [[l2_reasses, l2_reasses, l2_reasses, l1_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l3_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l4_reasses]],
   
    [[l3_reasses, l3_reasses, l3_reasses, l1_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l2_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l4_reasses]],
   
    [[l4_reasses, l4_reasses, l4_reasses, l1_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l2_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l3_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses]],
  ]

  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2, 3]
  arr_options = [0, 1, 2, 3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_reward_structure = reward_model[cur_row][cur_col][cur_arr]

  if    current_reward_structure == l1_reasses; gain
  elsif current_reward_structure == l2_reasses; 2.times do gain end
  elsif current_reward_structure == l3_reasses; 3.times do gain end
  elsif current_reward_structure == l4_reasses; 4.times do gain end
  else
    gain
  end
end

def sl_loss_allocation
  l1_reasses = "level one reasses"
  l2_reasses = "level two reasses"
  l3_reasses = "level tre reasses"
  l4_reasses = "level fro reasses"

  reward_model = [
    [[l1_reasses, l1_reasses, l1_reasses, l1_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l2_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l3_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l4_reasses]],
   
    [[l2_reasses, l2_reasses, l2_reasses, l1_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l3_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l4_reasses]],
   
    [[l3_reasses, l3_reasses, l3_reasses, l1_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l2_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l4_reasses]],
   
    [[l4_reasses, l4_reasses, l4_reasses, l1_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l2_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l3_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses]],
  ]

  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2, 3]
  arr_options = [0, 1, 2, 3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_reward_structure = reward_model[cur_row][cur_col][cur_arr]

  if    current_reward_structure == l1_reasses; loss
  elsif current_reward_structure == l2_reasses; 2.times do loss end
  elsif current_reward_structure == l3_reasses; 3.times do loss end
  elsif current_reward_structure == l4_reasses; 4.times do loss end
  else
    loss
  end
end

def sl_mode_switcher
  modes = [
    [["deposit", "deposit"], ["deposit", "extract"]],
    [["extract", "deposit"], ["extract", "extract"]],
  ]
  
  row_options = [0, 1]
  col_options = [0, 1]
  arr_options = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_mode = modes[cur_row][cur_col][cur_arr]

  if    current_mode == "deposit"; sl_reward_allocation
  elsif current_mode == "extract"; sl_loss_allocation
  else
    sl_loss_allocation
  end
end
