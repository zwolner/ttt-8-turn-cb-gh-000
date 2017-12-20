# code your #valid_move? method here
def valid_move?(board, index)
  if (index.between?(0, 8) && position_taken?(board,index) == false)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  taken = nil
  if (board[index] ==  " " || board[index] == "" || board[index] == nil)
    taken = false
  else
    taken = true
  end
  taken
end

#Display board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input to integer
def input_to_index(user_input)
  user_input.to_i - 1
end

#move
def move(board, index, current_player = "X")
  board[index] = current_player
end

#turn method
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index, "X")
  else
    until valid_move?(board, index) == true
      puts "Please enter 1-9:"
      user_input = gets.strip
      index = input_to_index(user_input)
    end
    move(board, index)
  end
  display_board(board)
end
