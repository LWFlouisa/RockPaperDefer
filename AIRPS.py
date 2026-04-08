import random
import os

#################################################################################################
#                                     Primary Game Engine                                       #
#################################################################################################
done = False

wins = 0
ties = 0
loss = 0

actions = {
  "R": "Rock",
  "P": "Paper",
  "S": "Scissors",
}

while not done:
  print(f"[WINS {wins}] [TIE {ties}] [LOSS {loss}]")

  #choice = input("Your action ( R, P, S ) ( Q To Quit ): ")
  
  player_actions = [
    [["R", "R", "R", "R", "R"],
     ["R", "R", "R", "R", "P"],
     ["R", "R", "R", "R", "S"],
     ["R", "R", "R", "R", "Q"],
     ["R", "R", "R", "R", "D"]],

    [["P", "P", "P", "P", "R"],
     ["P", "P", "P", "P", "P"],
     ["P", "P", "P", "P", "S"],
     ["P", "P", "P", "P", "Q"],
     ["P", "P", "P", "P", "D"]],

    [["S", "S", "S", "S", "R"],
     ["S", "S", "S", "S", "P"],
     ["S", "S", "S", "S", "S"],
     ["S", "S", "S", "S", "Q"],
     ["S", "S", "S", "S", "D"]],

    [["Q", "Q", "Q", "Q", "R"],
     ["Q", "Q", "Q", "Q", "P"],
     ["Q", "Q", "Q", "Q", "S"],
     ["Q", "Q", "Q", "Q", "Q"],
     ["Q", "Q", "Q", "Q", "D"]],

    [["D", "D", "D", "D", "R"],
     ["D", "D", "D", "D", "P"],
     ["D", "D", "D", "D", "S"],
     ["D", "D", "D", "D", "Q"],
     ["D", "D", "D", "D", "D"]],
  ]
  
  row_options = [0, 1, 2, 3, 4]
  col_options = [0, 1, 2, 3, 4]
  arr_options = [0, 1, 2, 3, 4]
  
  cur_row = random.choice(row_options)
  cur_col = random.choice(col_options)
  cur_arr = random.choice(arr_options)

  current_player_action = player_actions[cur_row][cur_col][cur_arr]
  
  cpu_a = "R"
  cpu_b = "P"
  cpu_c = "S"
  
  cpu_choice = [
    [[cpu_a, cpu_a, cpu_a],
     [cpu_a, cpu_a, cpu_b],
     [cpu_a, cpu_a, cpu_c]],

    [[cpu_b, cpu_b, cpu_a],
     [cpu_b, cpu_b, cpu_b],
     [cpu_b, cpu_b, cpu_c]],

    [[cpu_c, cpu_c, cpu_a],
     [cpu_c, cpu_c, cpu_b],
     [cpu_c, cpu_c, cpu_c]],
  ]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = random.choice(row_options)
  cur_col = random.choice(col_options)
  cur_arr = random.choice(arr_options)
  
  current_cpu_choice = cpu_choice[cur_row][cur_col][cur_arr]
  
  if current_player_action == current_cpu_choice:
    print(f"Stalemate! You both chose {actions[current_cpu_choice]}")
    
    ## Adds to the tie tally.
    ties = ties + 1
  elif current_player_action == "R":
    if   current_cpu_choice == "P":
      print(f"CPU Won! You chose {actions[current_cpu_choice]}. CPU chose: {current_cpu_choice}")
      
      ## Adds to the loss tally.
      loss = loss + 1
    else:
      print(f"You Won! You chose {actions[current_cpu_choice]} CPU chose: {current_cpu_choice}")
      
      ## Adds to the victory tally.
      wins = wins + 1
  elif current_player_action == "P":
    if   current_cpu_choice == "S":
      print(f"CPU Won! You chose {actions[current_cpu_choice]}. CPU chose: {current_cpu_choice}")

      ## Adds to the loss tally.
      loss = loss + 1
    else:
      print(f"You Won! You chose {actions[current_cpu_choice]} CPU chose: {current_cpu_choice}")

      ## Adds to the victory tally.
      wins = wins + 1   
  elif current_player_action == "S":
    if   current_cpu_choice == "R":
      print(f"CPU Won! You chose {actions[current_cpu_choice]}. CPU chose: {current_cpu_choice}")

      ## Adds to the loss tally.
      loss = loss + 1
    else:
      print(f"You Won! You chose {actions[current_cpu_choice]} CPU chose: {current_cpu_choice}")

      ## Adds to the victory tally.
      wins = wins + 1
  elif current_player_action == "D":  
    os.system("python3 RockPaperScissors.py")
  elif current_player_action == "Q":
    done = True
