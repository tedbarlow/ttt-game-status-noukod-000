# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top rows
  [3,4,5], # middle rows
  [6,7,8], # bottom rows
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], # right column
  [0,4,8], # left diagonal
  [2,4,6]  # right diagonal

]

def won?(board)
  if board.all?{|cell| cell == "" || cell == " "}
    false
  else
    row_win = nil
    WIN_COMBINATIONS.each do |combinations|
      if combinations.all?{|cell| board[cell] == "X"} || combinations.all?{|cell| board[cell] == "O"}
        row_win = combinations
      end
    end
  end
  return row_win
end

def full?(board)
  if board.all?{|cell| board[cell] == "X" || board[cell] == "O"}
  end
  #x_array = board.select do |cell|
    #cell == "X"
  #end
  #o_array = board.select do |cell|
    #cell == "O"
  #end
  #((x_array + o_array) == 9)
end

def draw?(board)
 if (!won(board) && full(board))
   return true
 else
   return false
 end
end

def over?(board)
  (won?(board)) || (full?(board)) || (draw?(board))
end
