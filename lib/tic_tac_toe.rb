WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8]
  ]
  puts "Welcome to Tic Tac Toe!"
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  def won?(board_array)
    WIN_COMBINATIONS.each do |combo_arr|
      first_index = combo_arr[0]
      second_index = combo_arr[1]
      third_index = combo_arr[2]
      
      symbol_1 = board_array[first_index]
      symbol_2 = board_array[second_index]
      symbol_3 = board_array[third_index]
      if symbol_1 == symbol_2 && symbol_2 == symbol_3 && symbol_1 != " "
        return combo_arr
      end
    end
    return false 
end

puts won?("X", " ", " ", "X", " ", " ", "X", " ", " ")

def full?(board_array)
  board_array.each do |numbers|
    if numbers == " "
      return false 
    end
  
end 