board =  [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  row_seperator = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts row_seperator
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts row_seperator
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return index = user_input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def valid_move?(board, index)
  !(position_taken?(board, index)) && index.between?(0, 8)?
  true : false
end

def position_taken?(board, index)
  position_taken = nil
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    position_taken = false
  else
    position_taken = true
  end
  # advanced solution w/ ternary operator
  # (board[index] == " " || board[index] == "" || board[index] == nil)?
  #false : true
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
  #display_board(board)
end
